class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
  end

  def politics
  end

  def datas
  end

end
