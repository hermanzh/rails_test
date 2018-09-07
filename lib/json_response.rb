module JsonResponse
  def error_json_response msg = nil
    {
        :status => :error,
        :msg => msg
    }
  end
end