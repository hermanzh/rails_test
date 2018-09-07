class Account::GroupsController < ApplicationController
  before_action :authenticate_user!
  def index
    @groups = current_user.participated_groups
    # render inline: "xml.p {'Horrid coding practice!'}", type: :builder
    # render plain: 'OK'
    # render html: "<strong>Not Found</strong>".html_safe
    # render json: 'a{xx: 1}', status: 500
    # render js: "alert('Hello Rails');" => security issue
  end
end
