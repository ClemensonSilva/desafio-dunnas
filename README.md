# Controle de Entrada - Sistema de Gerenciamento de Visitantes

[![Ruby on Rails](https://img.shields.io/badge/Ruby_on_Rails-CC0000?style=for-the-badge&logo=ruby-on-rails&logoColor=white)](https://rubyonrails.org)

Sistema web para controle de entrada de visitantes em unidades institucionais com gestão de permissões e integração de webcam.

## 📋 Descrição

Sistema desenvolvido em Ruby on Rails para registrar e gerenciar visitantes em múltiplas unidades de uma instituição, com:
- Cadastro compartilhado de visitantes entre unidades
- Controle de acesso por níveis de permissão
- Captura de foto via webcam
- Registro completo de visitas

## ✨ Funcionalidades Principais

### 👥 Gestão de Visitantes
- Cadastro com CPF, nome, RG, telefone e foto (captura via webcam)
- Autocompletar dados a partir de CPF existente
- Histórico de visitas por visitante

### 🏢 Controle de Unidades
- Cadastro de unidades institucionais
- Gestão de setores e funcionários por unidade
- Registros de visita isolados por unidade

### 🔐 Sistema de Permissões
- **Administrador**:
  - Cadastro de unidades/setores/funcionários
  - Gerenciamento de usuários
- **Atendente**:
  - Registro de visitas (apenas na própria unidade)
  - Cadastro de novos visitantes
- **Funcionário**:
  - Visualização de visitas pendentes
  - Confirmação de visitas realizadas

## 🛠 Tecnologias Utilizadas

**Backend**
- Ruby 3.x
- Rails 7.x
- PostgreSQL/MySQL

**Gems Principais**
- `devise` (Autenticação)
- `cancancan` (Autorização)
- `carrierwave` (Upload de fotos)

**Frontend**
- Bootstrap 5
- HTML5/CSS3

## 🚀 Instalação

### Pré-requisitos
- Ruby 3.x
- Rails 7.x
- PostgreSQL ou MySQL
- Node.js
- Yarn

```bash
# 1. Clonar repositório
git clone https://github.com/seu-usuario/controle-entrada.git

# 2. Instalar dependências
bundle install
yarn install

# 3. Configurar banco de dados
cp config/database.yml.example config/database.yml
# Editar arquivo com suas credenciais

# 4. Criar e popular banco
rails db:create
rails db:migrate
rails db:seed

# 5. Iniciar servidor
rails server

```

# Capturas de Tela

## Diagrama do Banco de Dados
![Diagrama do Banco de Dados](/docs/images/diagram_db.png)

## Login
![Login](/docs/images/Login.png)

## Menu Administrador
![Menu Administrador](/docs/images/menuAdmin.png)

## Menu Funcionário
![Menu Funcionário](/docs/images/menu_funcionario.png)

## Menu Unidades
![Menu Unidades](/docs/images/menu_unidades.png)

## Nova Unidade
![Nova Unidade](/docs/images/nova_unidade.png)

## Novo Setor
![Novo Setor](/docs/images/novo_setor.png)

## Novo Visitante
![Novo Visitante](/docs/images/novo_visitante.png)

## Setores
![Setores](/docs/images/setores.png)

## Setor Específico
![Setor Específico](/docs/images/setor_especifico.png)

## Unidade Específica
![Unidade Específica](/docs/images/unidade_especifica.png)

## Unidades
![Unidades](/docs/images/unidades.png)

## Visita Específica
![Visita Específica](/docs/images/visita_especifica.png)

## Visitante Específico
![Visitante Específico](/docs/images/visitante_especifico.png)

## Visitantes
![Visitantes](/docs/images/visitantes.png)
