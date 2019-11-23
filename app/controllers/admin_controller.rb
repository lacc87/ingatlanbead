class AdminController < ActionController::Base

  def index
    @username = ''
    @error = false
    if (params.has_key? :username)
      @username = params[:username]
      @error = true
    end
  end

end
