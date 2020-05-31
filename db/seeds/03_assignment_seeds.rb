assignments = [
    {name: "Assignment1",detail: "Detail for Assignment1", status: 1, course_id: 1},
    {name: "Assignment2",detail: "Detail for Assignment2", status: 1, course_id: 1},
    {name: "Assignment3",detail: "Detail for Assignment3", status: 1, course_id: 1},
    {name: "Assignment4",detail: "Detail for Assignment4", status: 1, course_id: 1},
    {name: "Assignment5",detail: "Detail for Assignment5", status: 1, course_id: 1},
    {name: "Assignment6",detail: "Detail for Assignment6", status: 1, course_id: 1},
    {name: "Assignment7",detail: "Detail for Assignment7", status: 1, course_id: 1},
    {name: "Assignment8",detail: "Detail for Assignment8", status: 1, course_id: 1},
   
    {name: "Assignment1",detail: "Detail for Assignment1", status: 1, course_id: 2},
    {name: "Assignment2",detail: "Detail for Assignment2", status: 1, course_id: 2},
    {name: "Assignment3",detail: "Detail for Assignment3", status: 1, course_id: 2},
    {name: "Assignment4",detail: "Detail for Assignment4", status: 1, course_id: 2},
    {name: "Assignment5",detail: "Detail for Assignment5", status: 1, course_id: 2},
    {name: "Assignment6",detail: "Detail for Assignment6", status: 0, course_id: 2},
    {name: "Assignment7",detail: "Detail for Assignment7", status: 0, course_id: 2},
    {name: "Assignment8",detail: "Detail for Assignment8", status: 0, course_id: 2},
    
    {name: "Assignment1",detail: "Detail for Assignment1", status: 1, course_id: 3},
    {name: "Assignment2",detail: "Detail for Assignment2", status: 1, course_id: 3},
    {name: "Assignment3",detail: "Detail for Assignment3", status: 1, course_id: 3},
    {name: "Assignment4",detail: "Detail for Assignment4", status: 1, course_id: 3},
    {name: "Assignment5",detail: "Detail for Assignment5", status: 1, course_id: 3},
    {name: "Assignment6",detail: "Detail for Assignment6", status: 0, course_id: 3},
    {name: "Assignment7",detail: "Detail for Assignment7", status: 0, course_id: 3},
    {name: "Assignment8",detail: "Detail for Assignment8", status: 0, course_id: 3},
    
    {name: "Assignment1",detail: "Detail for Assignment1", status: 0, course_id: 4},
    {name: "Assignment2",detail: "Detail for Assignment2", status: 0, course_id: 4},
    {name: "Assignment3",detail: "Detail for Assignment3", status: 0, course_id: 4},
    {name: "Assignment4",detail: "Detail for Assignment4", status: 0, course_id: 4},
    {name: "Assignment5",detail: "Detail for Assignment5", status: 0, course_id: 4},
    {name: "Assignment6",detail: "Detail for Assignment6", status: 0, course_id: 4},
    {name: "Assignment7",detail: "Detail for Assignment7", status: 0, course_id: 4},
    {name: "Assignment8",detail: "Detail for Assignment8", status: 0, course_id: 4}
]

assignments.each do |assignment|
    Assignment.create(assignment)
  end