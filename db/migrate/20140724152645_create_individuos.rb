class CreateIndividuos < ActiveRecord::Migration
  def change
    create_table :individuos do |t|
      t.string :nome
      t.string :telefone
      t.string :email
      t.text :observacao

      t.timestamps
    end
  end
end
