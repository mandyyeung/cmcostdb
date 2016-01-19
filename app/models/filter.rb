class Filter < ActiveRecord::Base
  validates :name, presence: true, uniqueness:true
end
