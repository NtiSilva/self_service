class Mesa < ApplicationRecord
  belongs_to :restaurante
    
  has_many :usermesas
  has_many :users, through: :usermesas
  has_many :compras
  has_many :comadas, through: :compras
end
