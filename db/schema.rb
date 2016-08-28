# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160828044358) do

  create_table "atividades", force: :cascade do |t|
    t.string   "nome"
    t.string   "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "aulas", force: :cascade do |t|
    t.integer  "atividade_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "beneficiarios", force: :cascade do |t|
    t.string   "nome"
    t.string   "rg"
    t.string   "cpf"
    t.string   "login"
    t.string   "senha"
    t.integer  "endereco_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "num_cartao"
  end

  create_table "boletos", force: :cascade do |t|
    t.integer  "cod_barras"
    t.integer  "fatura_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clinicas", force: :cascade do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "enderecos", force: :cascade do |t|
    t.string   "logradouro"
    t.string   "cidade"
    t.string   "estado"
    t.string   "numero"
    t.string   "bairro"
    t.string   "cep"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "especialidade", force: :cascade do |t|
    t.string   "nome"
    t.text     "tags"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "faturas", force: :cascade do |t|
    t.float    "valor_total"
    t.date     "data_emissao"
    t.date     "data_vencimento"
    t.integer  "beneficiario_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.boolean  "pago"
  end

  create_table "horarios", force: :cascade do |t|
    t.integer  "dia"
    t.time     "hora"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "itens_fatura", force: :cascade do |t|
    t.float    "valor"
    t.string   "descricao"
    t.string   "informacoes_prestador"
    t.date     "data"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "locais_atendimento", force: :cascade do |t|
    t.string   "tipo"
    t.float    "latitude"
    t.float    "longitude"
    t.float    "raio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "medicos", force: :cascade do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "programas", force: :cascade do |t|
    t.string   "nome"
    t.string   "descricao"
    t.string   "duracao"
    t.string   "publico_alvo"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
