require 'open-uri'
require 'nokogiri'
require 'pry'

doc = Nokogiri::HTML(open("http://students.flatironschool.com/"))

student = doc.css("li.home-blog-post")

# single student link string:
student_page_link = student.css("a").first.attr("href")
student_image_link = student.css("img").first.attr("src")
student_tagline = student.css("p.home-blog-post-meta").first.text
student_excerpt = student.css("div.excerpt").css("p").first.text




binding.pry