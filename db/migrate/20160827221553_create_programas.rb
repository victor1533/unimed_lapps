class CreateProgramas < ActiveRecord::Migration[5.0]
  def change
    create_table :programas do |t|
      t.string :nome
      t.string :descricao
      t.string :duracao
      t.string :publico_alvo

      t.timestamps
    end
  end
end
