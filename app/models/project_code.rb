class ProjectCode < ActiveRecord::Base
  validates :code, presence: true, uniqueness:true

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |project_code|
        csv << project_code.attributes.values_at(*column_names)
      end
    end
  end
end
