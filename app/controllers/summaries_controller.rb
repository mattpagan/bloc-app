class SummariesController < ApplicationController
	def show
    	@topic = Topic.find(params[:topic_id])
    	@post = Post.find(params[:id])
    	@summary = Summary.find(params[:id])
  	end

  	def new
    	@topic = Topic.find(params[:topic_id])
    	@post = Post.new
    	authorize @post
    	@summary = Summary.find(params[:id])
  	end
end