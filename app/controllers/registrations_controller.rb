## Because we added an attribute to our user model that will be submitted thorugh a form (username)
## we need to customise our strong params for this devise controller
## this controller MUST inherit from Devise and needs to be registed in your routes file

class RegistrationsController < Devise::RegistrationsController

    private

    def sign_up_params
        params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end

    def account_update_params
        params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end
end
