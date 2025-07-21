# Categories seed file
puts "🗂️  Seeding categories..."

# Clear existing categories
Category.destroy_all

# Create categories
categories_data = [
  { name: "Tops" },
  { name: "Bottoms" },
  { name: "Accessories" }
]

categories_data.each do |category_attributes|
  category = Category.create!(category_attributes)
  puts "   ✅ Created category: #{category.name}"
end

puts "📊 Created #{Category.count} categories"