class Aula < ApplicationRecord
	has_many :beneficiarios #rename to presentes
	has_many :horarios
	has_one :atividade

	
end
