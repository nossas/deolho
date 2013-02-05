class PostsController < InheritedResources::Base
  before_filter :only => [:index] { @highlight_post = Post.first }
  before_filter :only => [:index] { @wiki_word = Word.order("RANDOM()").first }
end
