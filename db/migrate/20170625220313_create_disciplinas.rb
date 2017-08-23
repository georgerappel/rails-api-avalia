class CreateDisciplinas < ActiveRecord::Migration[5.1]
  def change
    create_table :disciplinas do |t|
      t.string :codigo, index: { unique: true }
      t.string :nome

      t.timestamps
    end
  end
end
