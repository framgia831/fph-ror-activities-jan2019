class UsersController < ApplicationController
    def index
        @users = User.all
        #render plain: @users.inspect
    end

    def new
    end

    def create
        #params
        User.create(
            name: params[:user][:name],
            email: params[:user][:email]
        )

        redirect_to "/"
    end

    def show
        @user = User.find(params[:id])
    end

    def edit
        #/users/:id/edit
        @user = User.find(params[:id])
    end

    def update
        user = User.find(params[:id])

        user.update(
            name: params[:user][:name],
            email: params[:user][:email]
        )

        redirect_to "/"
    end

    def destroy
        user = User.find(params[:id])
        user.destroy

        redirect_to "/"
    end
end
