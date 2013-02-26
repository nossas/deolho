# coding: utf-8
class SubscribersController < InheritedResources::Base
  def new
    render :partial => "form"
  end

  def create
    session[:email] = params[:subscriber][:email]
    create! do |format|
      format.html { redirect_to root_path, :notice => "Pronto, agora senta e relaxa que enviaremos as atualizações do blog para o seu email." }
    end
  end
end
