class CreateEspecialidade < ActiveRecord::Migration[5.0]
  def change
    create_table :especialidade do |t|
      t.string :nome
      t.text :tags

      t.timestamps
    end
  end
end
