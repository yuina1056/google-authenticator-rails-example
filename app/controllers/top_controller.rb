class TopController < ApplicationController
  def index
    render html: "hello,world!!"
  end
  
  def logout
    UserMfaSession.destroy
    redirect_to :root
  end
end