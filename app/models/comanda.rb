class Comanda < ApplicationRecord
    validates :nome_cliente, presence: true

    has_many :compras
    has_many :mesas, through: :compras
end
