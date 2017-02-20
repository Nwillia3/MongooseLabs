class UserMsController < ApplicationController
  before_action :set_user_m, only: [:show, :edit, :update, :destroy]

  def create
    @user_m = UserM.new(user_m_params)

    respond_to do |format|
      if @user_m.save
        format.html { redirect_to @user_m, notice: 'User m was successfully created.' }
        format.json { render :show, status: :created, location: @user_m }
      else
        format.html { render :new }
        format.json { render json: @user_m.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_ms/1
  # PATCH/PUT /user_ms/1.json
  def update
    respond_to do |format|
      if @user_m.update(user_m_params)
        format.html { redirect_to @user_m, notice: 'User m was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_m }
      else
        format.html { render :edit }
        format.json { render json: @user_m.errors, status: :unprocessable_entity }
      end
    end
  end

  
  private
    # Use callbacks to share common setup or constraints betw een actions.
    def set_user_m
      @user_m = UserM.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_m_params
      params.require(:user_m).permit(:name, :email, :login)
    end
end
