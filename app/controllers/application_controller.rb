class ApplicationController < ActionController::Base
    before_action :authenticate_user!
  #  is_cancan=true
  #  begin
  #    Kernel.const_get('CanCan')
  #  rescue
  #    is_cancan=false
  #  end
  #  if is_cancan
  #    rescue_from CanCan::AccessDenied do |exception|
  #      flash[:error] = 'Voce não tem permissão.'
  #      redirect_to root_url
  #    end
  #  end 
end
