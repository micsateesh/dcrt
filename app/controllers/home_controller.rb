class HomeController < ApplicationController
  before_action :authenticate_user!
  expose :user
  expose :decorated_user, -> { current_user.decorate }
  def index
  end
end
