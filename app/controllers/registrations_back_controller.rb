class RegistrationsController < ApplicationController
    def new
        @user = User.new
    end

    def create
        #render plain :params[:user]
        @user = User.new(user_params)
        if @user.save
            redirect_to root_path, noctice:"Successfully created account."
        else
            #render :new, status: :unprocessable_entity
            format.html { render(:new, status: :unprocessable_entity) }
        end
    end

    def show
        @user = User.find(params[:id])
    end

    private

    def user_params
        params.require(:user).permit(:email, :password, :password_conformation)
    end
end
