class HomeController < ApplicationController
  skip_before_action :require_login, only: %i[top]
  
  def top
  end

  def index
    @boards = Board.all.includes(:user).order(created_at: :desc)
  end
end
