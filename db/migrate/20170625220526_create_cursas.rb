class CreateCursas < ActiveRecord::Migration[5.1]
  def change
    create_table :cursas do |t|
      t.belongs_to :disciplina_periodo, index: true
      t.belongs_to :aluno, index: true

      t.timestamps
    end
  end
end
