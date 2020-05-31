schools = [
  
    {user_id: 2, course_id: 1},
    {user_id: 3, course_id: 1},
    {user_id: 4, course_id: 2},
    {user_id: 5, course_id: 2},
    {user_id: 6, course_id: 3},
    {user_id: 7, course_id: 3},
    {user_id: 8, course_id: 4},
    {user_id: 9, course_id: 4}
    
    ]
    
    schools.each do |school|
      School.create(school)
    end
    
    