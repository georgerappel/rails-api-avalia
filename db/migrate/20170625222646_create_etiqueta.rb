class CreateEtiqueta < ActiveRecord::Migration[5.1]
  def change
    create_table :etiqueta do |t|
      t.references :tag, foreign_key: true
      t.references :aluno, foreign_key: true
      t.references :disciplinaPeriodo, foreign_key: true
      t.integer :valor

      t.timestamps
    end
  end
end
