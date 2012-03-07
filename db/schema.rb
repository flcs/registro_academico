# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120217194910) do

  create_table "alunos", :force => true do |t|
    t.integer  "pasta"
    t.string   "matricula"
    t.string   "nome"
    t.integer  "idade"
    t.date     "data_nascimento"
    t.string   "rg"
    t.string   "cpf"
    t.string   "endereco"
    t.string   "bairro"
    t.string   "cidade"
    t.string   "estado"
    t.string   "nacionalidade"
    t.string   "filiacao"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "cursos", :force => true do |t|
    t.string   "nome"
    t.integer  "modalidade_id"
    t.string   "descricao"
    t.integer  "carga_horaria"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "cursos", ["modalidade_id"], :name => "index_cursos_on_modalidade_id"

  create_table "disciplinas", :force => true do |t|
    t.string   "nome"
    t.string   "descricao"
    t.integer  "periodo_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "disciplinas", ["periodo_id"], :name => "index_disciplinas_on_periodo_id"

  create_table "modalidades", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "nota", :force => true do |t|
    t.integer  "valor"
    t.integer  "aluno_id"
    t.integer  "discliplina_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "nota", ["aluno_id"], :name => "index_nota_on_aluno_id"
  add_index "nota", ["discliplina_id"], :name => "index_nota_on_discliplina_id"

  create_table "periodos", :force => true do |t|
    t.string   "periodo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "professors", :force => true do |t|
    t.string   "matricula"
    t.string   "nome"
    t.integer  "idade"
    t.string   "email"
    t.string   "telefone"
    t.string   "formacao"
    t.string   "rg"
    t.string   "cpf"
    t.string   "endereco"
    t.string   "bairro"
    t.string   "cidade"
    t.string   "estado"
    t.string   "nacionalidade"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "rails_admin_histories", :force => true do |t|
    t.text     "message"
    t.string   "username"
    t.integer  "item"
    t.string   "table"
    t.integer  "month",      :limit => 2
    t.integer  "year",       :limit => 5
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], :name => "index_rails_admin_histories"

  create_table "turmas", :force => true do |t|
    t.integer  "curso_id"
    t.integer  "periodo_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "turmas", ["curso_id"], :name => "index_turmas_on_curso_id"
  add_index "turmas", ["periodo_id"], :name => "index_turmas_on_periodo_id"

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
