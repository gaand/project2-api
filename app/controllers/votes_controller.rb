class VotesController < ApplicationController
  before_action :set_vote, only: [:show, :update, :destroy]

  # GET /votes
  def index
    render json: @votes
  end

  # GET /votes/1 if the current vote is the vote you want to update, then i'll update
  def show
    if current_vote == @vote
      render json: @vote, serializer: CurrentVoteSerializer, root: 'vote'
    else
      render json: @vote
    end
  end

 # POST /votes
  def create
    @vote = current_user.votes.new(site_id: params[:site_id, opinion: 'up'])

    if @vote.save
      render json: @vote, status: :created, location: @vote
    else
      render json: @vote.errors, status: :unprocessable_entity
    end
  end

  # PATCH /users/1
  #YOU CANT UPDATE YOUR VOTES!

  # DESTROY YOUR OWN VOTE
  def destroy
    if current_vote == @vote
      @vote.destroy
      head :no_content
    else
      head :unauthorized
    end
  end

  def set_vote
    @vote = Vote.find(params[:id])
  end

  private :set_vote
end
