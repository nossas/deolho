class PostsController < InheritedResources::Base
  load_and_authorize_resource
  before_filter :only => [:index, :highlight] { @highlight_post = Post.first }

  def create
    params[:tagit].split(",").each do |name|
      @post.tags << Tag.find_or_create_by_name(name)
    end
    super
  end

  def update
    @post.tags = []
    params[:tagit].split(",").each do |name|
      @post.tags << Tag.find_or_create_by_name(name)
    end
    super
  end

  def destroy
    destroy!(:notice => "Post removido com sucesso")
  end

  def highlight
    render :partial => "highlight", :layout => "widget"
  end

  protected
  def collection
    if params[:search]
      end_of_association_chain.search_by_full_text(params[:search]).page(params[:page]).per(5)
    else
      end_of_association_chain.where("id <> ?", @highlight_post.nil? ? 0 : @highlight_post.id).page(params[:page]).per(5)
    end
  end
end
