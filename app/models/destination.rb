class Destination < ApplicationRecord
  belongs_to :visitable, polymorphic: true
end
