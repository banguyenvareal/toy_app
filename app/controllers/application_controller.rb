class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception

  def hello
  	first_user = User.first
    render html: first_user.miccroposts.first.content

  end
end
