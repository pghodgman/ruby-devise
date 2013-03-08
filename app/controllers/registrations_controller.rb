class RegistrationsController < Devise::RegistrationsController
  def create
    super
  end

  def destroy
    super
  end

  def after_sign_up_path_for(resource)
    new_account_path
  end

end
