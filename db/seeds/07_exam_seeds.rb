exams = [
  
    {title: "Exam1 for Beginner", course_id: 1,status: 1},
    {title: "Exam2 for Beginner", course_id: 1,status: 1},
    {title: "Exam1 for Intermediate", course_id: 2,status: 1},
    {title: "Exam2 for Intermediate", course_id: 2,status: 1},
    {title: "Exam1 for Advanced", course_id: 3,status: 1},
    {title: "Exam2 for Advanced", course_id: 3,status: 1},
    {title: "Exam1 for Toefl", course_id: 4,status: 1},
    {title: "Exam2 for Toefl", course_id: 4,status: 1}

    ]
    
    exams.each do |exam|
      Exam.create(exam)
    end
    
    