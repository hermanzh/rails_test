module JwtAuth
  attr_reader :current_user

  def authenticate_user_request!
    unless cs_id_in_token?
      render json: error_json_response('请登录'), status: :unauthorized
      return
    end
    @current_user = User.find_by_id(auth_token[:user_id])
    if @current_user.nil?
      render json: error_json_response('用户未找到'), status: :unauthorized
      return
    end
  rescue JWT::VerificationError, JWT::DecodeError
    render json: error_json_response('请登录'), status: :unauthorized
  end

  def current_user_name
    current_user = User.find_by_id(auth_token[:user_id])
    return nil if current_user.nil?
    current_user&.name
  end

  def http_token
    @http_token ||= if request.headers['Authorization'].present?
                      request.headers['Authorization'].split(' ').last
                    end
  end

  def auth_token
    @auth_token ||= JsonWebToken.decode(http_token)
  end

  def user_id_in_token?
    http_token && auth_token && auth_token[:user_id].to_i
  end

end