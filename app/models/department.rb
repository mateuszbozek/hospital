class Department < ApplicationRecord
  has_many :user
  has_many :patient
end
