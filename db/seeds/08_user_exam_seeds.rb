user_exams = [
    {exam_id: 1, user_id: 2,course_id: 1, status: 1, point: 100},
    {exam_id: 1, user_id: 4,course_id: 2, status: 1, point: 100},
    {exam_id: 1, user_id: 6,course_id: 3, status: 1, point: 100},
    {exam_id: 1, user_id: 8,course_id: 4, status: 1, point: 100}
    

]

user_exams.each do |user_exam|
    UserExam.create(user_exam)
  end