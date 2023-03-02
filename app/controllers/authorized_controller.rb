class AuthorizedController < ApplicationController
  before_action :set_current_tenant
  before_action :authorize_member

  private

  def set_current_tenant
    @current_tenant = Tenant.find(params[:tenant_id])
  end
  
  def authorize_member
    return redirect_to root_path, alert: 'You are not a member' unless @current_tenant.users.include? current_user
  end
end