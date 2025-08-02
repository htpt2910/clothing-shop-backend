# Products seed file
puts "👕 Seeding products..."

# Clear existing products
Product.destroy_all

# Ensure categories exist
if Category.count == 0
  puts "❌ No categories found. Please seed categories first."
  return
end

# Get all categories
categories = Category.all

# Create 10 products using Faker
10.times do |i|
  category = categories.sample

  product_name = case category.name
  when "Tops"
                   [ "#{Faker::Color.color_name.capitalize} #{%w[T-Shirt Sweater Hoodie Blouse Tank\ Top Cardigan].sample}",
                    "#{Faker::Adjective.positive.capitalize} #{%w[Shirt Polo Vest Jacket].sample}" ].sample
  when "Bottoms"
                   [ "#{Faker::Color.color_name.capitalize} #{%w[Jeans Pants Shorts Skirt Leggings].sample}",
                    "#{Faker::Adjective.positive.capitalize} #{%w[Trousers Chinos Joggers].sample}" ].sample
  when "Accessories"
                   [ "#{Faker::Color.color_name.capitalize} #{%w[Belt Bag Hat Scarf Sunglasses Watch].sample}",
                    "#{Faker::Adjective.positive.capitalize} #{%w[Wallet Necklace Bracelet Earrings].sample}" ].sample
  end

  product = Product.create!(
    name: product_name,
    description: Faker::Lorem.sentence(word_count: rand(8..15)),
    price: rand(1000..10000),
    stock: rand(5..50),
    category: category,
    image_url: "https://picsum.photos/300/300?random=#{i}"
  )
end

puts "📊 Created #{Product.count} products across #{Category.count} categories"
