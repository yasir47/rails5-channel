class MainController < ApplicationController

  def test
    @users = User.order('name DESC').all
  end

end