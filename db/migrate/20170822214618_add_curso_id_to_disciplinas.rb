class AddCursoIdToDisciplinas < ActiveRecord::Migration[5.1]
  def change
    change_table :disciplinas do |t|
      t.references :curso, foreign_key: true
    end
  end
end
