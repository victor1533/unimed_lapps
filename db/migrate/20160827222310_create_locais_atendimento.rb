class CreateLocaisAtendimento < ActiveRecord::Migration[5.0]
  def change
    create_table :locais_atendimento do |t|
      t.string :tipo
      t.float :latitude
      t.float :longitude
      t.float :raio
      

      t.timestamps
    end
  end
end
