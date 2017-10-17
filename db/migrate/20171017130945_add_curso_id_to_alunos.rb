class AddCursoIdToAlunos < ActiveRecord::Migration[5.1]
  def change
    change_table :alunos do |t|
      t.belongs_to :curso
    end
  end
end
