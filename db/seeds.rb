# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
50.times do
  content = Faker::Lorem.paragraph(sentence_count: rand(50..100), random_sentences_to_add: rand(10..20))
  Blog.create(
    title: Faker::Lorem.unique.sentence(word_count: rand(2..4)).split('.').join(''),
    content: content,
    preview_content: content.truncate(70),
    image_url: "https://picsum.photos/1280/720?random=#{rand(1..100)}",
    status: %w[draft pending published].sample
  )
end