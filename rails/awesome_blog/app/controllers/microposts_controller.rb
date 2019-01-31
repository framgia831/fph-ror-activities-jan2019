class MicropostsController < ApplicationController
    def create
        @micropost = current_user.microposts.new(micropost_params)

        if @micropost.save
            redirect_to root_url
        else
            @microposts = current_user.microposts.order(created_at: :desc).paginate(page: params[:page], per_page: 5)
            render "users/home_feed"
        end
    end

    def destroy
        micropost = Micropost.find(params[:id])

        if current_user == micropost.user
            micropost.destroy
            flash[:info] = "Micropost deleted."
        else
            flash[:danger] = "You can't do that."
        end

        redirect_to request.referrer || root_url
    end

    private
        def micropost_params
            params.require(:micropost).permit(:content, :picture)
        end
end
