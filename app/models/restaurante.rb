class Restaurante < ApplicationRecord
    validates :cnpj, presence: true, uniqueness: true
    validates :endereco, :nome, presence: true

    has_many :mesas
    has_many :cardapios
end
