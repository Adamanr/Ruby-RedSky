class PagesController < ApplicationController
  include Devise::Controllers::Helpers
  before_action :authenticate_user!

  #Методы страниц из контроллера
  def articles
  end

  def posts
    @posts = Post.all
    @post = Post.new
  end

  def profile
    @profile = current_user.email
  end

  #Основные методы
  def index
  end

end
