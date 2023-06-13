class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  # def after_sign_in_path_for(_resource)
  #   bands_path
  # end

  before_action :set_base_url

  private

  def set_base_url
    request.base_url = 'http://www.meetsicians.fr' # Set the appropriate base URL
  end

end
