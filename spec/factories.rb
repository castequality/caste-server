FactoryGirl.define do
  PHOTO_FILE = File.new("./spec/support/files/photo.jpg")

  factory :feature do
    video

    factory :featured_feature do
      featured true
    end
  end

  factory :post do
    sequence(:title) {|n| "Test Title ##{n}" }

    body "This is an interesting body post!"

    published_at { 1.week.ago }

    trait :unpublished do
      published_at { 1.week.from_now }
    end

    factory :post_with_photos do
      ignore do
        photo_count 3
      end

      after(:create) do |post, evaluator|
        create_list(:photo, evaluator.photo_count, imageable: post)
      end
    end

    factory :post_with_videos do
      ignore do
        video_count 3
      end

      after(:create) do |post, evaluator|
        create_list(:video, evaluator.video_count, videoable: post)
      end
    end
  end

  factory :project do
    association :banner, factory: [:photo, :banner]
    association :banner_hover, factory: [:photo, :banner_hover]

    factory :featured_project do
      featured true
    end
  end

  factory :photo do
    file PHOTO_FILE

    trait :banner do
    end

    trait :banner_hover do
    end
  end

  factory :video do
    sequence(:url) {|n| "http://www.youtube.com/embed/iFaKN98Xg3#{n}"}
  end
end