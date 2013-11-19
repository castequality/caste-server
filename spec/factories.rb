FactoryGirl.define do

  factory :feature do

  end

  factory :post do
    sequence(:title) {|n| "Test Title ##{n}" }

    body "This is an interesting body post!"

    published_at { 1.week.ago }

    trait :unpublished do
      published_at { 1.week.from_now }
    end

    trait :with_photos do

    end

    factory :post_with_videos do
      ignore do
        video_count 5
      end

      after(:create) do |post, evaluator|
        create_list(:video, evaluator.video_count, videoable: post)
      end
    end
  end

  factory :project do

  end

  factory :video do
    sequence(:url) {|n| "http://www.youtube.com/embed/iFaKN98Xg3#{n}"}
  end
end