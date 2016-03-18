FactoryGirl.define do
  factory :user do
    email {|n| "person#{n}@example.com" }
    username {|n| "username#{n}"}
    password 'secret123'
    password_confirmation 'secret123'
    confirmed_at Date.today
    admin 0
    factory :admin do
      admin 1
    end
    status 0
    factory :status do
      trial 0
      active 1
      expired 2
    end
  end
end
