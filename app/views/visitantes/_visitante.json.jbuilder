json.extract! visitante, :id, :nome, :CPF, :RG, :telefone, :foto, :created_at, :updated_at
json.url visitante_url(visitante, format: :json)
