class Patient < ApplicationRecord
  has_many :notes
  has_many :surveys
  belongs_to :department
end
