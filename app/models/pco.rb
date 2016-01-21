class Pco < ActiveRecord::Base
  validates :number, presence: true, uniqueness:true

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |pco|
        csv << pco.attributes.values_at(*column_names)
      end
    end
  end
end
