class HomeController < ApplicationController
  def index
  end

  def txt
    Text.new.send_text(current_user.phone)
    flash[:notice] = 'We just texted ' + current_user.phone
    redirect_back(fallback_location: root_path)
  end
end
