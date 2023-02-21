require 'pry'
require_relative './authors.rb'
require_relative './article.rb'
require_relative './magazine.rb'

author1 = Author.new('J.K. Rowling')
author2 = Author.new('Stephen King')

# Create magazines
magazine1 = Magazine.new('TIME', 'News')
magazine2 = Magazine.new('Rolling Stone', 'Music')

# Create articles
article1 = Article.new(author1, magazine1, 'The Power of Love')
article2 = Article.new(author1, magazine1, 'The Importance of Diversity')
article3 = Article.new(author2, magazine2, 'The Evolution of Rock and Roll')

# Test object relationship methods
p article1.author
p article1.magazine
p author1.articles
p author1.magazines
p magazine1.contributors

# Test association and aggregate methods
author1.add_article(magazine2, 'The Art of Horror')
p author1.topic_areas
p Magazine.find_by_name('Rolling Stone')
p magazine1.article_titles
p magazine2.contributing_authors