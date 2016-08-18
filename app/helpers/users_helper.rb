module UsersHelper
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
