class CreateEndereco < ActiveRecord::Migration[5.0]
  def change
    create_table :endereco do |t|
      t.string :logradouro
      t.string :cidade
      t.string :estado
      t.string :numero
      t.string :bairro
      t.string :cep

      t.timestamps
    end
  end
end
