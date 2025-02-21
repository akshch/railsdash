class UsersController < ApplicationController
  def index
      # if params[:email].present? || params[:gender].present?
      @users = User.index_search(params)
    # else
    #   @users = User.all
    # end
  end
end
