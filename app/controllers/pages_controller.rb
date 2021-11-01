class PagesController < ApplicationController
  include Devise::Controllers::Helpers
  before_action :authenticate_user!
  def index
  end
  def articles
  end
  def profile
    @profile = current_user.email
  end
end
