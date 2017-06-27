class CreateDisciplinaPeriodos < ActiveRecord::Migration[5.1]
  def change
    create_table :disciplina_periodos do |t|
      t.references :docente, foreign_key: true
      t.references :disciplina, foreign_key: true
      t.string :periodo, limit: 6

      t.timestamps
    end
  end
end
