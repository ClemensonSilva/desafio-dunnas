# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


User.create!( email: "admin@gmail.com", password: "123456", role: 0)
User.create!(email: "atendente@gmail.com", password: "123456", role: 1)
User.create!(email: "funcionario@gmail.com", password: "123456", role: 2)


Unidade.create!(nome: "Unidade Apodi")
Unidade.create!(nome: "Unidade Assu")
Unidade.create!(nome: "Unidade Macau")

Setor.create!(nome: "Setor de TI", unidade_id: 1)
Setor.create!(nome: "Setor de RH", unidade_id: 2)
Setor.create!(nome: "Setor de Compras", unidade_id: 3)
Setor.create!(nome: "Setor médico", unidade_id: 3)


Funcionario.create!(nome: "Clemenson Silva", setor_id: 1)
Funcionario.create!(nome: "Maria Silva", setor_id: 2)
