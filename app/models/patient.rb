class Patient < ApplicationRecord
  has_many :notes
  has_many :surveys

end
