class Team < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness:true

  def full_name
    self.first_name + " " + self.last_name
  end

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |team|
        csv << team.attributes.values_at(*column_names)
      end
    end
  end
end
