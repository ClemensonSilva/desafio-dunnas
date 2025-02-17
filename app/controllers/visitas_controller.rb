class VisitasController < ApplicationController
  before_action :set_visita, only: %i[ show edit update destroy ]
  before_action :authenticate_user!
  authorize_resource

  # GET /visitas or /visitas.json
  def index
    if current_user.admin?
      @visitas = Visita.all
    elsif current_user.atendente?
      if @visitas.nil?
        redirect_to new_visita_path, notice: "Nenhuma visita agendada para a sua unidade" # Se não houver visitas agendadas, redireciona para a página de agendamento
      elsif
        @visitas = Visita.where(unidade_id: current_user.unidade&.id) # O atendente só pode ver as visitas da sua unidade
      end
    end
  end

  # GET /visitas/1 or /visitas/1.json
  def show
    authorize! :read, @visita
  end

  # GET /visitas/new
  def new
    @visita = Visita.new

    @setores = Setor.all
    @funcionarios = User.all
  end

  # GET /visitas/1/edit
  def edit
    @visitas =Visita.statuses
  end

  # POST /visitas or /visitas.json
  def create
    @visita = Visita.new(visita_params)

    respond_to do |format|
      if @visita.save
        if current_user.atendente?
          format.html { redirect_to root_path, notice: "Visita agendada com sucesso na data " + @visita.data.strftime("%d/%m/%Y") + ". informe ao cliente para chegar com 10 minutos de antecedência ;)" }
      else
      format.html { redirect_to @visita, notice: "Visita was successfully created." }
      format.json { render :show, status: :created, location: @visita }
        end
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @visita.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /visitas/1 or /visitas/1.json
  def update
    respond_to do |format|
      if @visita.update(visita_params)
        format.html { redirect_to @visita, notice: "Visita was successfully updated." }
        format.json { render :show, status: :ok, location: @visita }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @visita.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /visitas/1 or /visitas/1.json
  def destroy
    @visita.destroy!

    respond_to do |format|
      format.html { redirect_to visitas_path, status: :see_other, notice: "Visita was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_visita
      @visita = Visita.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def visita_params
      params.expect(visita: [ :visitante_id, :user_id, :status, :data, :setor_id, :unidade_id ])
    end
end
