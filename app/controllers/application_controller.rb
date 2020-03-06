class ApplicationController < ActionController::Base
  layout :set_layout

  rescue_from StandardError, with: :rescure500

  private def set_layout
    if params[:controller].match(%r{\A(staff|admin|customer)})
      Regexp.last_match[1]
    else
      "customer"
    end
  end

  private def rescure500(e)
    render "errors/internal_server_error", status: 500
  end
end
