courses = [
    {name: "Beginner"},
    {name: "Intermediate"},
    {name: "Advanced"},
    {name: "Toefl"}
]

courses.each do |course|
    Course.create(course)
  end