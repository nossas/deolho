def path_to page
  return root_path if page == "the homepage"
  return new_post_path if page == "the new post page"
  return post_path(Post.order("id DESC").first) if page == "this new post page"
  raise "I don't know #{page}"
end
