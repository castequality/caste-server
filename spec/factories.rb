include ActionDispatch::TestProcess

FactoryGirl.define do
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
    association :banner, factory: :photo
    association :banner_hover, factory: :photo

    factory :featured_project do
      featured true
    end
  end

  factory :photo do
    file_file_name    { "spec/support/filesphoto.jpg" }
    file_content_type { "image/jpeg" }
    file_file_size    { 1024 }
  end

  factory :video do
    sequence(:url) {|n| "http://www.youtube.com/embed/iFaKN98Xg3#{n}"}
  end
end