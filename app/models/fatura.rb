class Fatura < ApplicationRecord
	has_many :itens_fatura
	belongs_to :beneficiario
	scope :em_aberto, -> {where("pago = false AND data_vencimento >= ? ", Time.zone.now)}
	scope :pagas, -> {where(:pago => true)}
	scope :vencidas, -> {where("pago = false AND data_vencimento < ? ", Time.zone.now)}

end
