class School < ApplicationRecord
	belongs_to :district, :class_name => "District", :foreign_key => "district_id"
	has_many :users
end
