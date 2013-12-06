FactoryGirl.define do
  sequence(:name) {|n| "Test #{n}" }
  sequence(:url)  {|n| "http://example.com/#{n}"}

  trait :featured do
    featured  { true }

    published
  end

  trait :published do
    published_at { 1.week.ago }
  end

  trait :unpublished do
    published_at { 1.week.from_now }
  end

  factory :admin_user do
    sequence(:email) {|n| "email_#{n}@example.com"}

    password              {"password"}
    password_confirmation { password }
  end

  factory :feature do
    video_url { generate :url }

    factory :featured_feature do
      featured
    end
  end

  factory :post do
    name
    body      {"This is an interesting body post!"}
    published
  end

  factory :project do
    name

    video_url     { generate :url  }

    banner        { generate :url  }
    banner_hover  { generate :url  }

    published

    factory :featured_project do
      featured
    end
  end

  factory :photo do
    url       { generate :url }
    thumbnail { generate :url }
  end

  factory :source do
    name "blog"
  end

  factory :visual do
    photo     { generate :url }
    thumbnail { generate :url }

    published

    trait :imported do
      source
    end

    trait :original do
      source { nil }
    end
  end
end