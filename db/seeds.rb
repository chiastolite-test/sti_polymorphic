# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all

article = StiArticle.create!(user: User.create)

item_creators = [
  Proc.new { |n| StiVideo.create!(sti_article: article, url: "http://example.com/#{n}") },
  Proc.new { |n| StiUrl.create!(sti_article: article, url: "http://example.com/#{n}") },
  Proc.new { |n| StiText.create!(sti_article: article, description: "Test #{n}") }
]

10.times { |n| item_creators.sample.call(n) }

article = PolymorphicArticle.create!(user: User.create)

item_creators = [
 Proc.new { |n| PolymorphicVideoItem.create!(polymorphic_article: article, url: "http://example.com/#{n}") },
 Proc.new { |n| PolymorphicUrlItem.create!(polymorphic_article: article, url: "http://example.com/#{n}") },
 Proc.new { |n| PolymorphicVideoItem.create!(polymorphic_article: article, url: "http://example.com/#{n}") }
]

10.times { |n| item_creators.sample.call(n) }
