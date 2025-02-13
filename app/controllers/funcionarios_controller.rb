class FuncionariosController < ApplicationController
  before_action  :authenticate_user! # verifica se o usuario esta logado
  authorize_resource class: true # verifica se o usuario tem autoriazacao p execultar as acoes

  # GET /funcionarios or /funcionarios.json
  def index
    @funcionarios = Funcionario.all
  end

  # GET /funcionarios/1 or /funcionarios/1.json
  def show
  end

  # GET /funcionarios/new
  def new
    @funcionario = Funcionario.new
    can? :create, @funcionario

  end

  # POST /funcionarios or /funcionarios.json
  def create
    @funcionario = Funcionario.new(funcionario_params)

    respond_to do |format|
      if @funcionario.save
        format.html { redirect_to @funcionario, notice: "Funcionario was successfully created." }
        format.json { render :show, status: :created, location: @funcionario }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @funcionario.errors, status: :unprocessable_entity }
      end
    end
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_funcionario
      @funcionario = Funcionario.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def funcionario_params
      params.expect(funcionario: [ :nome,  :setor_id ])
    end
end
