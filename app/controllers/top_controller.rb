class TopController < ApplicationController
  def index
  end
  
  def logout
    UserMfaSession.destroy
    redirect_to :root
  end
end