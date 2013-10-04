require 'open-uri'
require 'nokogiri'
require 'pry'

doc = Nokogiri::HTML(open("http://students.flatironschool.com/"))

all_student_data = doc.css("li.home-blog-post")

# stuff for a single student

# student.css("div.big-comment").first.text
# student_page_link = student.css("a").first.attr("href")
# student_image_link = student.css("img").first.attr("src")
# student_tagline = student.css("p.home-blog-post-meta").first.text
# student_excerpt = student.css("div.excerpt").css("p").first.text

all_student_links = all_student_data.collect do |student|
  student.css("a").attr("href")
end

all_student_image_links = all_student_data.collect do |student|
  student.css("img").attr("src")
end

binding.pry