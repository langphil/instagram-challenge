class WelcomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = User.last
  end
end
