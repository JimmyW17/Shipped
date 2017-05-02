class UsersController < ApplicationController
  # before_action :authenticate_user!

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def sign_out_and_redirect(resource_or_scope)
    scope = Devise::Mapping.find_scope!(resource_or_scope)
    redirect_path = after_sign_out_path_for(scope)
    Devise.sign_out_all_scopes ? sign_out : sign_out(scope)
    redirect_to redirect_path
  end
end
