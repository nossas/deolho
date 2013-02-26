# coding: utf-8

class Notifier < ActionMailer::Base
  default from: "De Olho <deolho@meurio.org.br>"

  def newsletter recipient, posts
    headers "X-SMTPAPI" => "{ \"category\": [\"deolho\", \"newsletter\"] }"
    @posts = posts
    mail(:to => recipient, :subject => "Atualização Semanal do Blog")
  end
end
