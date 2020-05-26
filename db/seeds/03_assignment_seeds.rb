assignments = [
    {name: "Assignment1",detail: "Detail for Assignment1", course_id: 1},
    {name: "Assignment2",detail: "Detail for Assignment2", course_id: 1},
    {name: "Assignment3",detail: "Detail for Assignment3", course_id: 1},
    {name: "Assignment4",detail: "Detail for Assignment4", course_id: 1},
    {name: "Assignment5",detail: "Detail for Assignment5", course_id: 1},
    {name: "Assignment1",detail: "Detail for Assignment1", course_id: 2},
    {name: "Assignment2",detail: "Detail for Assignment2", course_id: 2},
    {name: "Assignment3",detail: "Detail for Assignment3", course_id: 2},
    {name: "Assignment4",detail: "Detail for Assignment4", course_id: 2},
    {name: "Assignment5",detail: "Detail for Assignment5", course_id: 2},
    {name: "Assignment1",detail: "Detail for Assignment1", course_id: 3},
    {name: "Assignment2",detail: "Detail for Assignment2", course_id: 3},
    {name: "Assignment3",detail: "Detail for Assignment3", course_id: 3},
    {name: "Assignment4",detail: "Detail for Assignment4", course_id: 3},
    {name: "Assignment5",detail: "Detail for Assignment5", course_id: 3},
    {name: "Assignment1",detail: "Detail for Assignment1", course_id: 4},
    {name: "Assignment2",detail: "Detail for Assignment2", course_id: 4},
    {name: "Assignment3",detail: "Detail for Assignment3", course_id: 4},
    {name: "Assignment4",detail: "Detail for Assignment4", course_id: 4},
    {name: "Assignment5",detail: "Detail for Assignment5", course_id: 4},
]

assignments.each do |assignment|
    Assignment.create(assignment)
  end