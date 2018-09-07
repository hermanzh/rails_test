class Api::Post::PostController < Api::ApiBaseController
  before_action :authenticate_user_request!
  swagger_controller :post, 'post相关'

  swagger_api :index do
    summary '获取所有post'
    notes '获取所有post'
    param :path, :page, :integer, :optional, '页数'
    param :form, :name, :string, :optional, '名称'
  end

  def index
    posts = Post.all.name_like(params[:name]).page(params[:page])

    render json: posts, meta: pagination_dict(posts)
  end
end