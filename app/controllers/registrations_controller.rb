class RegistrationsController < Devise::RegistrationsController
  private
  def sign_up_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :role_id, :department_id)
  end
  def account_update_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :role_id, :department_id)
  end
end