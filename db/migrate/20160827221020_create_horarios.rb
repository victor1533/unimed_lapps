class CreateHorarios < ActiveRecord::Migration[5.0]
  def change
    create_table :horarios do |t|
      t.integer :dia
      t.time :hora

      t.timestamps
    end
  end
end
