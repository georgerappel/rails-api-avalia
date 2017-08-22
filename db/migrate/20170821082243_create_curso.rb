class CreateCurso < ActiveRecord::Migration[5.1]
  def change
    create_table :cursos do |t|
      t.string :name
      t.integer :departamento_id

      t.timestamps
    end
  end
end
