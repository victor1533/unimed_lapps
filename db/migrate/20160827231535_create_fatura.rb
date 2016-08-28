class CreateFatura < ActiveRecord::Migration[5.0]
  def change
    create_table :fatura do |t|
      t.float :valor_total
      t.date :data_emissao
      t.date :data_vencimento
      t.integer :beneficiario_id

      t.timestamps
    end
  end
end
