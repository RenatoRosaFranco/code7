# utf-8
FactoryGirl.define do
  factory :post do
    title ''
    description ''
    content ''
    pusblished true
    tags ''
    association :user
    trait :post_unpublished do
      published false
    end
  end
end
