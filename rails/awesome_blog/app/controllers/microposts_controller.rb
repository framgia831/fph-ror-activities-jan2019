class MicropostsController < ApplicationController
    def create
        @micropost = current_user.microposts.new(micropost_params)

        if @micropost.save
            redirect_to root_url
        else
            @microposts = current_user.microposts.order(created_at: :desc)
            render "users/home_feed"
        end
    end

    def destroy
        micropost = Micropost.find(params[:id])
        micropost.destroy

        flash[:info] = "Micropost deleted."
        redirect_to root_url
    end

    private
        def micropost_params
            params.require(:micropost).permit(:content, :picture)
        end
end
