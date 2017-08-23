class CreateCursos < ActiveRecord::Migration[5.1]
  def change
    create_table :cursos do |t|
      t.string :nome
      t.belongs_to :departamento

      t.timestamps
    end
  end
end
