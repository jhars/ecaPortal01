class User < ApplicationRecord
	has_secure_password
	belongs_to :district, :class_name => "District", :foreign_key => "district_id"
	belongs_to :school, :class_name => "School", :foreign_key => "school_id"
end
