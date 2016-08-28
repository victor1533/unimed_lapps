class AddColumnPagoToFatura < ActiveRecord::Migration[5.0]
  def change
    add_column :faturas, :pago, :boolean
  end
end
