class WordsController < InheritedResources::Base
  load_and_authorize_resource
  
  def destroy
    super do |format|
      format.html { redirect_to root_url, :notice => "Wiki removida com sucesso" }
    end
  end
end
