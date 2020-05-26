users = [
{first_name: "admin", last_name: "spaceless", username: "admin", email: "admin@gmail.com", password: "1234", course_id: 0, assignment_id: 0,assignment_status: true},
{first_name: "Beginner1", last_name: "spaceless", email: "beginner1@gmail.com", username: "begin1", password: "begin1", course_id: 1, assignment_id: 1, assignment_status: true},
{first_name:  "Beginner2", last_name: "spaceless", email: "beginner2@gmail.com", username: "begin2", password: "begin2", course_id: 1, assignment_id: 2, assignment_status: true},
{first_name: "Intermidate1", last_name: "spaceless", email: "intermidate1@gmail.com", username: "inter1", password: "inter1", course_id: 2, assignment_id: 6, assignment_status: true},
{first_name: "Intermidate2", last_name: "spaceless", email: "intermidate2@gmail.com", username: "inter2", password: "inter2", course_id: 2,assignment_id: 6, assignment_status: true},
{first_name: "Intermidate3", last_name: "spaceless", email: "intermidate3@gmail.com", username: "inter3", password: "inter3", course_id: 2,assignment_id: 7, assignment_status: true},
{first_name: "advanced1", last_name: "spaceless", email: "advanced1@gmail.com", username: "ad1", password: "ad1", course_id: 3,assignment_id: 11, assignment_status: true},
{first_name: "advanced2", last_name: "spaceless", email: "advanced2@gmail.com", username: "ad2", password: "ad2", course_id: 3,assignment_id: 11, assignment_status: true},
{first_name: "advanced3", last_name: "spaceless", email: "advanced3@gmail.com", username: "ad3", password: "ad3", course_id: 3,assignment_id: 11, assignment_status: true},
{first_name: "advanced4", last_name: "spaceless", email: "advanced4@gmail.com", username: "ad4", password: "ad4", course_id: 3,assignment_id: 12, assignment_status: true},
{first_name: "toefl1", last_name: "spaceless", email: "toefl1@gmail.com", username: "toelf1", password: "toefl1", course_id: 4,assignment_id: 16, assignment_status: true},
{first_name: "blank", last_name: "spaceless", email: "blank1@gmail.com", username: "blank", password: "blank", course_id: 0,assignment_id: "nil", assignment_status: true}

]

users.each do |user|
  User.create(user)
end


