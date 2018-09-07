class WelcomeController < ApplicationController
  def index
    flash[:warning] = t 'welcome.hello'
  end
end
