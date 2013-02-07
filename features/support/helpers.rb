def path_to page
  return root_path if page == "the homepage"
  return new_post_path if page == "the new post page"
  return post_path(Post.order("id DESC").first) if page == "this new post page"
  return new_word_path if page == "the new wiki page"
  return word_path(Word.order("id DESC").first) if page == "this new wiki page"
  return post_path(@post) if page == "this post page"
  raise "I don't know #{page}"
end
