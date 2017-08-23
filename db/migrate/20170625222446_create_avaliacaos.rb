class CreateAvaliacaos < ActiveRecord::Migration[5.1]
  def change
    create_table :avaliacaos do |t|
      t.belongs_to :cursa, index: true
      t.string :comentario
      t.boolean :status
      t.float :nota

      t.timestamps
    end
  end
end
