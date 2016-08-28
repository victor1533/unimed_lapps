class Beneficiario < ApplicationRecord
	has_many :faturas
	has_and_belongs_to_many :programas
	has_many :aulas, through: :programas
	has_many :atividades, through: :aulas

end
