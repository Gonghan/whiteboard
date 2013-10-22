# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do

  factory :assignment_individual, :parent=>:assignment do
    is_team_deliverable false
  end

  factory :assignment_team, :parent=>:assignment do
    is_team_deliverable true
  end

  factory :assignment_unsubmissible, :parent=>:assignment do
    is_submittable false
    due_date ""
  end

  factory :assignment_fse, :parent=>:assignment do
    name "fse assignment 1"
    association :course, :factory => :fse
  end

  factory :assignment_seq, :parent=>:assignment  do
    course_id 1
    sequence(:name) {|i| "Assignment #{i}"}
    sequence(:maximum_score) {|i| i*3}
    sequence(:assignment_order) {|i| i}
  end

  factory :assignment_fse_individual, :parent=>:assignment do
    name "fse assignment individual"
    task_number 9
    is_team_deliverable false
    association :course, :factory => :fse
  end

  factory :assignment1_fse, :parent=>:assignment do
    name "assignment 1"
    task_number 1
    is_team_deliverable false
    association :course, :factory=>:fse_fall_2011
  end

  factory :assignment2_fse, :parent=>:assignment do
    name "assignment 2"
    task_number 2
    is_team_deliverable false
    association :course, :factory=>:fse_fall_2011
  end

  factory :assignment3_fse, :parent=>:assignment do
    name "assignment 3"
    task_number 3
    is_team_deliverable false
    association :course, :factory=>:fse_fall_2011
  end



end
