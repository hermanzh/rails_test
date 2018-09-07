class Api::ApiBaseController < ApplicationController
  # include JsonResponse
  # include JwtAuth

  # rescue_from Exception, with: :standard_errors
  # rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  def pagination_dict(object)
    {
        current_page: object.current_page,
        next_page: object.next_page,
        prev_page: object.prev_page,
        total_pages: object.total_pages,
        total_count: object.total_count
    }
  end

  def user_for_paper_trail
    user_id_in_token? ? current_user_name : 'Unknown user'
  end

  # protected
  # def standard_errors error
  #   NewRelic::Agent.notice_error(error)
  #   Raven.extra_context(params: params.permit!.to_h, url: request.url)
  #   Raven.capture_exception(error)
  #   render json: error_json_response(error.message), :status => 500
  # end
  #
  # def record_not_found exception
  #   exception.message.match /^Couldn't find (\w+) with ('id'=([\S]*))?/
  #   msg = t('activerecord.exceptions.not_found', model_name: $1.constantize.model_name.human, id: $3)
  #   render json: error_json_response(msg), :status => 404
  # end

end
