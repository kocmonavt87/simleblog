class UserInformationsController < ApplicationController
	# http_basic_authenticate_with name: "admin", password: "admin",
  # expect: [:index, :show]
  before_action :authorize

	 def index
    @user_informations = UserInformation.all
  end

  def show
    @user_information = UserInformation.find(params[:id])
  end

  def new
    @user_information = UserInformation.new
  end

  def create
    @user_information = UserInformation.new(user_informations_params)

    respond_to do |format|
      if @user_information.save
        format.html { redirect_to @user_information, notice: 'user information was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
    @user_information = UserInformation.find(params[:id])
  end

  def update
    @user_information = UserInformation.find(params[:id])
    respond_to do |format|
      if @user_information.update(user_infomation_params)
        format.html { redirect_to @user_information, notice: 'User Information was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @user_information = UserInformation.find(params[:id])
    @user_information.destroy
    respond_to do |format|
      format.html { redirect_to user_informations_url, notice: 'user information was successfully destroyed.' }
    end
  end

  private

  def user_informations_params
      params.require(:user_information).permit(:first_name, :last_name, :gender, :birthday, :childrens, :child_count)
  end
end
