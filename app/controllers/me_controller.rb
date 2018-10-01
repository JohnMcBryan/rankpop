class MeController < ApplicationController
  before_action :authenticate
  # TODO Make sure the votes table is displaying the right tables in the user profile page
  def show
    @ranktables = Ranktable.where(authorID: current_user.id)
    @tableIDs = Vote.where(userID: current_user.id).select(:tableID)
    @votetables = Ranktable.where(id: @tableIDs)

  end
end
