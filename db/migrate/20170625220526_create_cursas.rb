class CreateCursas < ActiveRecord::Migration[5.1]
  def change
    create_table :cursas do |t|
      t.references :aluno, foreign_key: true
      t.references :disciplinaPeriodo, foreign_key: true

      t.timestamps
    end
  end
end
