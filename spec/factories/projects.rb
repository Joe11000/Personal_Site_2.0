FactoryGirl.define do
  factory :home_project, :class => 'Home::Project' do
    sequence(:name)         { |n| "App_#{n}"}
    sequence(:language)     { |n|  "language_#{n}" }
    sequence(:objective)    { |n|  "proj_#{n}_objective" }
    sequence(:description)  { |n|  "proj_#{n}_description" }
    sequence(:pictures)     { |n|  ["proj_#{n}_picture_A", "proj_#{n}_picture_B"] }
    sequence(:github_link)  { |n|  "proj_#{n}_github_link" }
    sequence(:live_link)    { |n|  "proj_#{n}_live_link" }
  end

end
