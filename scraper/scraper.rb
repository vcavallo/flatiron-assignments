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

# student_image = all_student_links.first

a_student_page = Nokogiri::HTML(open("http://students.flatironschool.com/students/vivianzhang.html"))

a_student_image = a_student_page.css("img.student_pic").attr("src").text
a_student_twitter = a_student_page.css("i.icon-twitter").first.parent.attr("href")
a_student_linkedin = a_student_page.css("i.icon-linkedin-sign").first.parent.attr("href")
a_student_github = a_student_page.css("i.icon-github").first.parent.attr("href")
a_student_facebook = a_student_page.css("i.icon-facebook").first.parent.attr("href")
a_student_quote = a_student_page.css("div.textwidget").text
a_student_bio = a_student_page.css("div#ok-text-column-2").css("p").first.children.to_s.strip
a_student_education = a_student_page.css("div#ok-text-column-3").css("ul").children.text.strip.split("\n")
# fix space above
a_student_work = a_student_page.css("div#ok-text-column-4").css("p").first.children.to_s.strip

# # loop through all student pages
# all_student_links.each do |url|

#   student_page = Nokogiri::HTML(open("http://students.flatironschool.com/#{url}"))

# end




binding.pry