class CreateCursas < ActiveRecord::Migration[5.1]
  def change
    create_table :cursas do |t|
      t.references :aluno_dre
      t.references :disciplina_periodo_id

      t.timestamps
    end
    add_index :cursas, [:aluno_dre, :disciplina_periodo_id], unique: true
  end
end
