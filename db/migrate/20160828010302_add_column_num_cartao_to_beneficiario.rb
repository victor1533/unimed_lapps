class AddColumnNumCartaoToBeneficiario < ActiveRecord::Migration[5.0]
  def change
    add_column :beneficiarios, :num_cartao, :string
  end
end
