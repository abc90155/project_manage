class CommentsController < ApplicationController
    def create
        @task.comments.create! params.required(:comment).permit(:weekly_report_item)
        redirect_to @task
      end
    
      private
      def set_post
        @task = Task.find(params[:post_id])
      end
end
