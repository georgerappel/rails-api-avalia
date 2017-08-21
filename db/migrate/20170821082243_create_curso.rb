class CreateCurso < ActiveRecord::Migration[5.1]
  def change
    create_table :cursos do |t|
      t.string :name
      t.integer :departamento
    end
  end
end
