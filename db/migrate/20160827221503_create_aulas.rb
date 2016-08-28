class CreateAulas < ActiveRecord::Migration[5.0]
  def change
    create_table :aulas do |t|
      t.integer :atividade_id

      t.timestamps
    end
  end
end
