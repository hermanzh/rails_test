class ApplicationController < ActionController::Base
  # include JsonResponse
  # include JwtAuth
  protect_from_forgery with: :exception
end
