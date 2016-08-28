class AddColumnEspecialidadeToMedico < ActiveRecord::Migration[5.0]
  def change
    add_column :medicos, :especialidade, :string
  end
end
