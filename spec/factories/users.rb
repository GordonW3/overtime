FactoryGirl.define do
  sequence :email do |n|
    "test#{n}@example.com"
  end

  factory :user do
  	first_name 'potato'
  	last_name 'head'
  	email {generate :email}
  	password "123456"
  	password_confirmation "123456"
    phone "1112223333"
  end

	factory :admin_user, class: "AdminUser" do
		first_name "Admin"
		last_name "User"
		email {generate :email}
		password "123456"
		password_confirmation "123456"
    phone "1112223333"
	end

    factory :non_authorized_user, class: "User" do
    first_name "non"
    last_name "Authorised"
    email {generate :email}
    password "123456"
    password_confirmation "123456"
    phone "1112223333"
  end
end