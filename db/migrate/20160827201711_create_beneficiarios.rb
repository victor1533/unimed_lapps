class CreateBeneficiarios < ActiveRecord::Migration[5.0]
  def change
    create_table :beneficiarios do |t|
      t.string :nome
      t.string :rg
      t.string :cpf
      t.string :login
      t.string :senha
      t.integer :endereco_id

      t.timestamps
    end
  end
end
