class Cardapio < ApplicationRecord
    validates :descricao, :categoria, :tempo_preparo, :preco, presence: true
    validates :nome, presence: true, uniqueness: true
    validates :categoria, inclusion: %w(B L)

    has_one_attached :foto

    belongs_to :restaurante
end
