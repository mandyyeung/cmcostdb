class Subcontractor < ActiveRecord::Base
  validates :name, presence: true, uniqueness:true

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |subcontractor|
        csv << subcontractor.attributes.values_at(*column_names)
      end
    end
  end
end
