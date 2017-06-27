class CreateAvaliacaos < ActiveRecord::Migration[5.1]
  def change
    create_table :avaliacaos do |t|
      t.references :aluno, foreign_key: true
      t.references :disciplinaPeriodo, foreign_key: true
      t.string :comentario
      t.boolean :status
      t.datetime :data
      t.datetime :dataAlteracao
      t.float :nota

      t.timestamps
    end
  end
end
