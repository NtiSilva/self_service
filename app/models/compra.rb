class Compra < ApplicationRecord
  validates :cardapio, presence: true
  
  belongs_to :mesa
  belongs_to :comanda
end
