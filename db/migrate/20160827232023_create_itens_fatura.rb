class CreateItensFatura < ActiveRecord::Migration[5.0]
  def change
    create_table :itens_fatura do |t|
      t.float :valor
      t.string :descricao
      t.string :informacoes_prestador
      t.date :data

      t.timestamps
    end
  end
end
