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

ActiveRecord::Schema.define(version: 20170625222646) do

  create_table "alunos", force: :cascade do |t|
    t.string "dre"
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dre"], name: "index_alunos_on_dre"
  end

  create_table "avaliacaos", force: :cascade do |t|
    t.integer "aluno_id"
    t.integer "disciplinaPeriodo_id"
    t.string "comentario"
    t.boolean "status"
    t.datetime "data"
    t.datetime "dataAlteracao"
    t.float "nota"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["aluno_id"], name: "index_avaliacaos_on_aluno_id"
    t.index ["disciplinaPeriodo_id"], name: "index_avaliacaos_on_disciplinaPeriodo_id"
  end

  create_table "cursas", force: :cascade do |t|
    t.integer "aluno_id"
    t.integer "disciplinaPeriodo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["aluno_id"], name: "index_cursas_on_aluno_id"
    t.index ["disciplinaPeriodo_id"], name: "index_cursas_on_disciplinaPeriodo_id"
  end

  create_table "disciplina_periodos", force: :cascade do |t|
    t.integer "docente_id"
    t.integer "disciplina_id"
    t.string "periodo", limit: 6
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["disciplina_id"], name: "index_disciplina_periodos_on_disciplina_id"
    t.index ["docente_id"], name: "index_disciplina_periodos_on_docente_id"
    t.index ["id"], name: "index_disciplina_periodos_on_id"
  end

  create_table "disciplinas", force: :cascade do |t|
    t.string "codigo"
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["codigo"], name: "index_disciplinas_on_codigo"
  end

  create_table "docentes", force: :cascade do |t|
    t.string "matricula"
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["matricula"], name: "index_docentes_on_matricula"
  end

  create_table "etiqueta", force: :cascade do |t|
    t.integer "tag_id"
    t.integer "aluno_id"
    t.integer "disciplinaPeriodo_id"
    t.integer "valor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["aluno_id"], name: "index_etiqueta_on_aluno_id"
    t.index ["disciplinaPeriodo_id"], name: "index_etiqueta_on_disciplinaPeriodo_id"
    t.index ["tag_id"], name: "index_etiqueta_on_tag_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "nome", limit: 20
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
