class TagsController < InheritedResources::Base
  before_filter { @posts = Tag.find(params[:id]).posts.page(params[:page]).per(10) }
end
