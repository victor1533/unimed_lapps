class Programa < ApplicationRecord
	has_many :aulas
	has_and_belongs_to_many :beneficiarios
end
