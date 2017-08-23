class CreateDisciplinaPeriodos < ActiveRecord::Migration[5.1]
  def change
    create_table :disciplina_periodos do |t|
      #TODO Referencia de chave estrangeira
      t.belongs_to :docente, index: true
      t.belongs_to :disciplina, index: true
      t.string :periodo, limit: 6, null: false

      t.timestamps
    end
  end
end
