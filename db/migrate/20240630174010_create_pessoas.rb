class CreatePessoas < ActiveRecord::Migration[7.1]
  def change
    create_table :pessoas do |t|
      t.string :nome
      t.integer :idade
      t.string :email
      t.string :enderecoL1
      t.integer :numCasa

      t.timestamps
    end
  end
end
