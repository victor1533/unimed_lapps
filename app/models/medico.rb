class Medico < ApplicationRecord
	has_many :especialidades
	has_and_belongs_to_many :locais_atendimento
	
end
