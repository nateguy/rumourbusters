class UserRumoursController < ApplicationController
  before_action :set_user_rumour, only: [:show, :edit, :update, :destroy]

  # GET /user_rumours
  def index
    @user_rumours = UserRumour.all
  end

  # GET /user_rumours/1
  def show
  end

  # GET /user_rumours/new
  def new
    @user_rumour = UserRumour.new
  end

  # GET /user_rumours/1/edit
  def edit
  end

  # POST /user_rumours
  def create
    @user_rumour = UserRumour.new(user_rumour_params)

    if @user_rumour.save
      render :toggle
      #redirect_to @user_rumour, notice: 'User rumour was successfully created.'
    else
      render :toggle
    end
  end

  # PATCH/PUT /user_rumours/1
  def update
    if @user_rumour.update(user_rumour_params)
      redirect_to @user_rumour, notice: 'User rumour was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /user_rumours/1
  def destroy
    @user_rumour.destroy
    redirect_to user_rumours_url, notice: 'User rumour was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_rumour
      @user_rumour = UserRumour.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_rumour_params
      params.require(:user_rumour).permit(:credible, :user_id, :rumour_id)
    end
end
