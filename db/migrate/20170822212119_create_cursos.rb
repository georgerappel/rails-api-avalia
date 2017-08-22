class CreateCursos < ActiveRecord::Migration[5.1]
  def change
    create_table :cursos do |t|
      t.string :nome
      t.references :departamento, foreign_key: true

      t.timestamps
    end
  end
end
