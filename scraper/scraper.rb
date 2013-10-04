require 'open-uri'
require 'nokogiri'
require 'pry'

doc = Nokogiri::HTML(open("http://students.flatironschool.com/"))

all_student_data = doc.css("li.home-blog-post")

all_student_links = all_student_data.collect do |student|
  student.css("a").attr("href")
end

all_student_image_links = all_student_data.collect do |student|
  student.css("img").attr("src")
end

all_student_taglines = all_student_data.collect do |student|
  student.css("p.home-blog-post-meta").text
end

all_student_excerpt = all_student_data.collect do |student|
  student.css("div.excerpt").css("p").text
end

# # loop through all student pages
# all_student_links.each do |url|

#   student_page = Nokogiri::HTML(open("http://students.flatironschool.com/#{url}"))

# end




binding.pry