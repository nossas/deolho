class PostsController < InheritedResources::Base
  before_filter :only => [:index] { @highlight_post = Post.first }
end
