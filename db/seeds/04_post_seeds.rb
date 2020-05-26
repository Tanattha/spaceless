posts = [
    {title: "Title for Beginner1", content: "Content for Beginner1", user_id: 2, course_id: 1 },
    {title: "Title for Beginner2", content: "Content for Beginner2", user_id: 3, course_id: 1},
    {title: "Title for Intermidate1", content: "Content for Intermediate1", user_id: 4, course_id: 2},
    {title: "Title for Intermediate2", content: "Content for Intermediate2", user_id: 5, course_id: 2},
    {title: "Title for Intermediate3", content: "Content for Intermediate3", user_id: 6, course_id: 2},
    {title: "Title for Advanced1", content: "Content for Advanced1", user_id: 7, course_id: 3},
    {title: "Title for Advanced2", content: "Content for Advanced2", user_id: 8, course_id: 3},
    {title: "Title for Advanced3", content: "Content for Advanced3", user_id: 9, course_id: 3},
    {title: "Title for Advanced4", content: "Content for Advanced4", user_id: 10, course_id: 3},
    {title: "Title for Toefl1", content: "Content for Toefl1", user_id: 11, course_id: 4}
]

posts.each do |post|
    Post.create(post)
  end