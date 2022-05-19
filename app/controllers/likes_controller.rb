class LikesController < ApplicationController
  def create
    @jellyfish = Jellyfish.find(params[:jellyfish_id])
    @alreadylike = Like.find_by(ip: request.remote_ip, jellyfish_id: params[:jellyfish_id])
    if @alreadylike
        redirect_back(fallback_location: root_path)
        flash[:notice] = "すでに投票しています、ありがとうございます！"
     else
        @like = Like.create(jellyfish_id: params[:jellyfish_id], ip: request.remote_ip)
        redirect_back fallback_location: root_path, success: '投票ありがとうございます！'
    end
  end
end
