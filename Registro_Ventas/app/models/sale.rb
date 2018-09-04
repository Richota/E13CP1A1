class Sale < ApplicationRecord
  validates :cod, uniqueness: true

  validates :category, inclusion: {
    in: %w(uno dos tres cuatro cinco),
    message: "%{values} no es una categoria válida"
  }
end
