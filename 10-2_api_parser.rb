require 'json'
require 'rest_client'

reddit_hash = JSON.parse(RestClient.get('http://reddit.com/.json'))

reddit_hash["data"]["children"][1]["data"]
                                  # iterate this "1" array
# {"domain"=>"i.imgur.com", 
# "banned_by"=>nil, 
# "media_embed"=>{}, 
# "subreddit"=>"funny", 
# "selftext_html"=>nil, 
# "selftext"=>"", 
# "likes"=>nil, 
# "secure_media"=>nil, 
# "saved"=>false, 
# "id"=>"1nkufi", 
# "secure_media_embed"=>{}, 
# "clicked"=>false, 
# "stickied"=>false, 
# "author"=>"Hamm3rFlst", 
# "media"=>nil, 
# "score"=>1905, 
# "approved_by"=>nil, 
# "over_18"=>false, 
# "hidden"=>false, 
# "thumbnail"=>
# "http://c.thumbs.redditmedia.com/SJtVrRE8J2yVfWDn.jpg", "subreddit_id"=>"t5_2qh33", "edited"=>false, "link_flair_css_class"=>nil, "author_flair_css_class"=>nil, "downs"=>945, "is_self"=>false, "permalink"=>"/r/funny/comments/1nkufi/you_know_your_college_is_nerdy_when/", "name"=>"t3_1nkufi", "created"=>1380746804.0, "url"=>"http://i.imgur.com/Uf8Eany.jpg", "author_flair_text"=>nil, "title"=>"You know your college is nerdy when...", "created_utc"=>1380718004.0, "link_flair_text"=>nil, "distinguished"=>nil, "num_comments"=>88, "num_reports"=>nil, "ups"=>2850}

reddit_hash["data"]["children"][1]["data"]["over_18"]

all_posts = reddit_hash["data"]["children"].collect do |post|
  post
end

def get_safe_posts(every_post)
  safe_posts = every_post.select do |a_post|
    a_post.each do |attribute, value|
      if attribute == "data"
        value.each do |post_data_name, data|
          true if post_data_name == "over_18" && data == false
        end
      end
    end
  end
  safe_posts
end

# puts get_safe_posts(all_posts)

puts all_posts[0]
puts all_posts[1]

def get_single_safe_post(every_safe_post, post_number)
  every_safe_post[post_number]
end

# get_single_safe_post(all_posts, 0)

def get_post_element(every_post, post, element)
  result = ""
  get_safe_posts(every_post).each do |a_post|
    a_post.each do |attribute, value|
      if attribute == "data"
        value.each do |post_data_name, data|
          result = data if post_data_name == element
        end
      end
    end
  end
  result
end

# get_post_element(all_posts, get_single_safe_post(all_posts, 0), "ups")

def generate_html(every_post, post_number)
  upvotes = 
  get_post_element(every_post, get_single_safe_post(every_post, post_number), "ups")

  downvotes = 
  get_post_element(every_post, get_single_safe_post(every_post, post_number), "downs")

  permalink = 
  get_post_element(every_post, get_single_safe_post(every_post, post_number), "permalink")

  title = 
  get_post_element(every_post, get_single_safe_post(every_post, post_number), "title")

  thumbnail = 
  get_post_element(every_post, get_single_safe_post(every_post, post_number), "thumbnail")

  puts "upvotes = #{upvotes}"
  puts "downvotes = #{downvotes}"
  puts "permalink = #{permalink}"
  puts "title = #{title}"
  puts "thumbnail = #{thumbnail}"

end



# generate_html(all_posts, 0)



