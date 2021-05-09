FactoryBot.define do
    factory :user do
        email {"samle@sample.com"}
        username {"sample"}
        github_name {["user1", "user2", "user3"]}
    end
end
  