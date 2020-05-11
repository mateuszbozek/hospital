class Patient < ApplicationRecord
  has_many :notes
  has_many :surveys
  belongs_to :department
  #
  # def self.to_csv
  #   CSV.generate do |csv|
  #     attributes = %w{name surename personal_identify_number}
  #     csv << attributes
  #     all.each do |patient|
  #       csv << attributes.map{ |attr| patient.send(attr) }
  #     end
  #   end
  # end

  def self.to_csv(options ={})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |patient|
        csv << patient.attributes.values_at(*column_names)
      end
    end
  end

end
