json.extract! funcionario, :id, :nome, :unidade_id, :setor_id, :created_at, :updated_at
json.url funcionario_url(funcionario, format: :json)
