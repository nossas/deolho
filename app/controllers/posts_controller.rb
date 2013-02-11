class PostsController < InheritedResources::Base
  load_and_authorize_resource
  before_filter :only => [:index] { @highlight_post = Post.first }

  def create
    params[:tagit].split(",").each do |name|
      @post.tags << Tag.find_or_create_by_name(name)
    end
    super
  end

  protected
  def collection
    end_of_association_chain.where("id <> ?", @highlight_post.nil? ? 0 : @highlight_post.id).page(params[:page]).per(5)
  end
end
