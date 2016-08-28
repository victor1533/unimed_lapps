class CreateClinicas < ActiveRecord::Migration[5.0]
  def change
    create_table :clinicas do |t|
      t.string :nome

      t.timestamps
    end
  end
end
