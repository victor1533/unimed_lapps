class CreateBoleto < ActiveRecord::Migration[5.0]
  def change
    create_table :boleto do |t|
      t.integer :cod_barras
      t.integer :fatura_id

      t.timestamps
    end
  end
end
