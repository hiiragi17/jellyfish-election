class RanksController < ApplicationController
  def index
    @jellyfish_like_ranks = Jellyfish.find(Like.group(:jellyfish_id).order('count(jellyfish_id) desc').pluck(:jellyfish_id))
    @jellyfishes = Jellyfish.order("created_at DESC")
  end
end
