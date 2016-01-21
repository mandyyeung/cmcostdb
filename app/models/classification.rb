class Classification < ActiveRecord::Base
  validates :name, presence: true, uniqueness:true

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |classification|
        csv << classification.attributes.values_at(*column_names)
      end
    end
  end
end
