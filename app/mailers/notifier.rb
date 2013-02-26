# coding: utf-8

class Notifier < ActionMailer::Base
  default from: "De Olho <deolho@meurio.org.br>"

  def newsletter recipient, posts
    @posts = posts
    mail(:to => recipient, :subject => "Atualização Semanal do Blog")
  end
end
