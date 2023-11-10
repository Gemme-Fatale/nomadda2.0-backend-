class Country < ApplicationRecord
  has_many :destinations, as: :visitable
end
