FactoryBot.define do
  factory :product do
    sequence(:name) { |n| "Product #{n}" }
    description { "A great product description" }
    price { rand(10.0..100.0).round(2) }
    stock { rand(1..100) }
    image_url { "https://picsum.photos/300/400?random=1" }
    association :category
  end
end
