# Main seeds file - loads all individual seed files
require 'faker'

puts "🌱 Starting database seeding..."

# Load seed files in the correct order (due to dependencies)
seed_files = [
  'categories',
  'products'
]

seed_files.each do |seed_file|
  seed_path = Rails.root.join('db', 'seeds', "#{seed_file}.rb")
  
  if File.exist?(seed_path)
    puts "📁 Loading #{seed_file} seeds..."
    load seed_path
    puts ""
  else
    puts "⚠️  Seed file not found: #{seed_path}"
  end
end

puts "✅ Database seeding completed!"
puts "🎉 Seeded #{Product.count} products under #{Category.count} categories!"