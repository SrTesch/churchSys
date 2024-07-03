class CreateMembros < ActiveRecord::Migration[7.1]
  def change
    create_table :membros do |t|
      t.string :NomeCompleto
      t.date :DataNascimento
      t.string :Endereco
      t.string :telefone
      t.string :Area

      t.timestamps
    end
  end
end
