class TopicsController < ApplicationController
    def index
        @topics = Topic.all
    end

    def show
        @topic = Topic.find(params[:id])
    end

    def new
    end

    def create
        topic = Topic.create(
            title: params[:topic][:title],
            description: params[:topic][:description]
        )

        redirect_to "/topics/#{topic.id}"
    end

    def edit
        @topic = Topic.find(params[:id])
    end

    def update
        topic = Topic.find(params[:id])

        topic.update(
            title: params[:topic][:title],
            description: params[:topic][:description]
        )

        redirect_to "/topics/#{topic.id}"
    end

    def destroy
        topic = Topic.find(params[:id])
        topic.destroy

        redirect_to "/topics"
    end

    def vote
        Vote.create(
            topic_id: params[:id]
        )

        redirect_to "/topics"
    end

    def downvote
        topic = Topic.find(params[:id])

        # if topic.votes.count > 0
        if topic.votes.any?
            topic.votes.last.destroy
        end

        redirect_to "/topics"
    end
end
