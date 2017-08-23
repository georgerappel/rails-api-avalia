class AddCursoIdToDisciplinas < ActiveRecord::Migration[5.1]
  def change
    change_table :disciplinas do |t|
      t.belongs_to :curso, index: true
    end
  end
end
