class RegistrationsController < Devise::RegistrationsController
                         #########   DANGERZONE   #########
                #This class will overite the default devise registration controller.
                #The only the permited paramenters will be accepted
                #I hope that this works.
               
                
  
    private

    def sign_up_params
        params.require(:user).permit(:name, :username, :email, :password, :password_confirmation, :image)
    end

    def account_update_params
        params.require(:user).permit(:name, :username,:email, :password, :password_confirmation, :current_password, :image)
    end

    

end