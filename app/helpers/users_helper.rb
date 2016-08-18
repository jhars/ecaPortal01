module UsersHelper
	def assign_district(district_input)
		@user[:district_id] = 1
	  @district = District.where(district_name: district_input).last
	end

	def assign_school(school_input)
		@user.school_id = 2
	  @school = School.where(school_id: school_input).last
	end
	
	def grade_level(grade_input)
	  grade_translator = {
	    'Kindergarten' => 0,
	    '1st Grade' => 1,
	    '2nd Grade' => 2,
	    '3rd Grade' => 3,
	    '4th Grade' => 4,
	    '5th Grade' => 5,
	    '6th Grade' => 6,
	    '7th Grade' => 7,
	    '8th Grade' => 8
	  }
	  grade_translator[:grade_input]
	end
end
