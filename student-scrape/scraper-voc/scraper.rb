require 'open-uri'
require 'nokogiri'
require 'pry'
require 'sqlite3'

doc = Nokogiri::HTML(open("http://students.flatironschool.com/"))

db = SQLite3::Database.new "students.db"
db.execute "CREATE TABLE IF NOT EXISTS 
              Students(
                id INTEGER PRIMARY KEY,
                link TEXT, 
                image TEXT, 
                tagline TEXT,
                excerpt TEXT
              )"

all_student_data = doc.css("li.home-blog-post")

all_student_links = all_student_data.collect do |student|
  student.css("a").attr("href").text
end

all_student_image_links = all_student_data.collect do |student|
  student.css("img").attr("src").text
end

all_student_taglines = all_student_data.collect do |student|
  student.css("p.home-blog-post-meta").text
end

all_student_excerpts = all_student_data.collect do |student|
  student.css("div.excerpt").css("p").text
end


# # # 

all_students = all_student_links.collect do |a_link|
  ["http://students.flatironschool.com/#{a_link.to_s}"]
end

# i = 0
# all_students.each do |student|
#   student << all_student_image_links[i]
# end

# i = 0 
# all_students.each do |student|
#   student << all_student_taglines[i]
# end

def populate(full_list, attribute_array)
  i = 0
  full_list.each do |student|
    student << attribute_array[i]
  end
end

# Wow, just realized this is real broken.
# it's just filling with the first student's data over and over.
# FIX! (and finish) 
## HAHA About to go to sleep and realized i wasn't incrementing i. do that.
populate(all_students, all_student_image_links)
populate(all_students, all_student_taglines)
populate(all_students, all_student_excerpts)



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
# fix spaces above
a_student_work = a_student_page.css("div#ok-text-column-4").css("p").first.children.to_s.strip
# need to figure out coder cred: 
#   a_student_page.css("div.coder-cred").children.each do |cred|
#     puts cred.children.css("a").children  


# # loop through all student pages
# all_student_links.each do |url|

#   student_page = Nokogiri::HTML(open("http://students.flatironschool.com/#{url}"))


# end




binding.pry