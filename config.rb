require 'pry'
require_relative './authors.rb'
require_relative './article.rb'
require_relative './magazine.rb'

author1 = Author.new('M.c Tricks')
author2 = Author.new('Luthar Enomes')

# Create magazines
magazine1 = Magazine.new('NEWTIMES', 'News')
magazine2 = Magazine.new('BET AWARDS', 'Music')

# Create articles
article1 = Article.new(author1, magazine1, 'Microsoft Insider')
article2 = Article.new(author1, magazine1, 'Cultural Shock')
article3 = Article.new(author2, magazine2, 'The Evolution of Utopia')

# Test object relationship methods
p article1.author
p article1.magazine
p author1.articles
p author1.magazines
p magazine1.contributors

# Test association and aggregate methods
author1.add_article(magazine2, 'The Heroic Man')
p author1.topic_areas
p Magazine.find_by_name('NEWTIMES')
p magazine1.article_titles
p magazine2.contributing_authors