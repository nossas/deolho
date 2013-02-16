class WordsController < InheritedResources::Base
  load_and_authorize_resource
  
  def destroy
    super do |format|
      format.html { redirect_to root_url, :notice => "Wiki removida com sucesso" }
    end
  end

  def qtip
    render :text => AutoHtml.auto_html(Word.find(params[:word_id].to_i).short_description){ simple_format }
  end
end
