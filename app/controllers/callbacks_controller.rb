## A controller that handles the callback from github (i.e. where github sends them after they have authenticated the user)
## this controller MUST inherit from Devise and needs to be registed in your routes file
class CallbacksController < Devise::OmniauthCallbacksController
    def github
        ## request.env is a hash  that comes from rack and contiains a ton of data about the user and the repsonse. 
        ## request.env["omniauth.auth"] is accessing a key in that hash... that points to another hash!
        ## this hash has the data (about the user) that github is returning 
        ## my overall goal is to create a new user (or return an existing one) from this data
        @user = User.from_omniauth(request.env["omniauth.auth"])

        sign_in_and_redirect @user
    end
end