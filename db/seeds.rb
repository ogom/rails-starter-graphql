1.upto(4) do |num|
  post = Post.create_with(body: "body:#{num}").find_or_create_by(title: "title:#{num}")
  1.upto(2) do |num|
    post.comments.find_or_create_by(body: "post:#{post.id} body:#{num}")
  end
end
