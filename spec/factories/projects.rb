FactoryGirl.define do
  factory :project do
    sequence(:name){ |n| "App_#{n}"}
    sequence(:language){ |n| "language_#{n}"}
    description "You gotta fight, for your right, to paaaaaaaaarty"
  end
end
