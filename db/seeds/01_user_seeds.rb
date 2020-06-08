users = [
{first_name: "admin", last_name: "spaceless", username: "admin", email: "admin@gmail.com", password: "1234", course_id: 0, role_id: 1, avatar: "../images/avatars/1.jpg"},
{first_name: "Beginner1", last_name: "spaceless", email: "beginner1@gmail.com", username: "begin1", password: "begin1", course_id: 1,role_id: 0, avatar: "../images/avatars/2.jpg"},
{first_name: "Beginner2", last_name: "spaceless", email: "beginner2@gmail.com", username: "begin2", password: "begin2", course_id: 1,role_id: 0, avatar: "../images/avatars/3.jpg"},
{first_name: "Intermidate1", last_name: "spaceless", email: "intermidate1@gmail.com", username: "inter1", password: "inter1", course_id: 2,role_id: 0, avatar: "../images/avatars/4.jpg"},
{first_name: "Intermidate2", last_name: "spaceless", email: "intermidate2@gmail.com", username: "inter2", password: "inter2", course_id: 2,role_id: 0, avatar: "../images/avatars/5.jpg"},
{first_name: "advanced1", last_name: "spaceless", email: "advanced1@gmail.com", username: "ad1", password: "ad1", course_id: 3,role_id: 0, avatar: "../images/avatars/6.jpg"},
{first_name: "advanced2", last_name: "spaceless", email: "advanced2@gmail.com", username: "ad2", password: "ad2", course_id: 3,role_id: 0, avatar: "../images/avatars/7.jpg"},
{first_name: "toefl1", last_name: "spaceless", email: "toefl1@gmail.com", username: "toelf1", password: "toefl1", course_id: 4,role_id: 0, avatar: "../images/avatars/8.jpg"},
{first_name: "toefl2", last_name: "spaceless", email: "toefl2@gmail.com", username: "toelf2", password: "toefl2", course_id: 4,role_id: 0, avatar: "../images/avatars/9.jpg"},

]

users.each do |user|
  User.create(user)
end


