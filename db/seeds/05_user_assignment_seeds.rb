user_assignments = [
    {assignment_id: 1, user_id: 2,course_id: 1, status: 1, note: "This is a note for assignment 1"},
    {assignment_id: 2, user_id: 2,course_id: 1, status: 1, note: "This is a note for assignment 2"},
    {assignment_id: 3, user_id: 2,course_id: 1, status: 1, note: "This is a note for assignment 3"},
    {assignment_id: 1, user_id: 4,course_id: 2, status: 1, note: "This is a note for assignment 1"},
    {assignment_id: 1, user_id: 6,course_id: 3, status: 1, note: "This is a note for assignment 1"},
    {assignment_id: 1, user_id: 8,course_id: 4, status: 1, note: "This is a note for assignment 1"}

]

user_assignments.each do |assignment|
    UserAssignment.create(assignment)
  end