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
  end

	factory :adumin_user, class: "AdminUser" do
		first_name "Admin"
		last_name "User"
		email {generate :email}
		password "123456"
		password_confirmation "123456"
	end
end