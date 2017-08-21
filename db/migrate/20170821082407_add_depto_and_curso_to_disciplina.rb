class AddDeptoAndCursoToDisciplina < ActiveRecord::Migration[5.1]
  def change
    change_table :disciplinas do |t|
      t.integer :curso
    end
  end
end
