class LocalAtendimento < ApplicationRecord
	has_many :programas
	has_and_belongs_to_many :medicos

	has_one :endereco
	

	reverse_geocoded_by :latitude, :longitude
	after_validation :reverse_geocode  # auto-fetch address

	def clinica?
		tipo == "clinica"
	end

	def hospital?
		tipo == "hospital"

	end

	def pronto_atendimento?
		tipo == "pronto_atendimento"
	end
end
