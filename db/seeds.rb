# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Populacao do db:



Unidade.create!(nome: "Unidade Apodi")
Unidade.create!(nome: "Unidade Assu")
Unidade.create!(nome: "Unidade Macau")

Setor.create!(nome: "Setor de TI", unidade_id: 1)
Setor.create!(nome: "Setor de RH", unidade_id: 2)
Setor.create!(nome: "Setor de Psicologia", unidade_id: 2)
Setor.create!(nome: "Setor de Compras", unidade_id: 3)
Setor.create!(nome: "Setor Médico", unidade_id: 3)

User.create!(email: "admin@gmail.com", password: "123456", role: 0)
User.create!(email: "atendente@gmail.com", password: "123456", role: 1, unidade_id: 1)

User.create!(email: "funcionario@gmail.com", password: "123456", role: 2, setor_id:1)
User.create!(email: "funcionario2@gmail.com", password: "123456", role: 2, setor_id:3)
User.create!(email: "funcionari3@gmail.com", password: "123456", role: 2, setor_id:2)
User.create!(email: "funcionari4@gmail.com", password: "123456", role: 2, setor_id:3)
User.create!(email: "funcionari5@gmail.com", password: "123456", role: 2, setor_id:1)



Visitante.create!(nome: "Marcos Silva", cpf: "12345678901", rg: "12345678901", telefone: "12345678901", foto: "marcosfoto.jpg")
Visitante.create!(nome: "Maria Silva", cpf: "12345678902", rg: "12345678902", telefone: "12345678902", foto: "mariafoto.jpg")
Visitante.create!(nome: "João Pereira", cpf: "12345678903", rg: "12345678903", telefone: "12345678903", foto: "joaofoto.jpg")
Visitante.create!(nome: "José Pereira", cpf: "12345678904", rg: "12345678904", telefone: "12345678904", foto: "josefoto.jpg")
Visitante.create!(nome: "Ana Pereira", cpf: "12345678905", rg: "12345678905", telefone: "12345678905", foto: "anafoto.jpg")

Visita.create!(status: 0, data: "2025-02-28 17:31:43", visitante_id: 1, user_id: 3)
Visita.create!(status: 0, data: "2025-02-22 17:31:43", visitante_id: 2, user_id: 5)
Visita.create!(status: 1, data: "2025-02-13 17:31:43", visitante_id: 2, user_id: 3)
Visita.create!(status: 2, data: "2025-02-10 17:31:43", visitante_id: 3,user_id: 4)
Visita.create!(status: 0, data: "2025-02-23 17:31:43", visitante_id: 1, user_id: 6)
