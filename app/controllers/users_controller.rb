class UsersController < ApplicationController
   
   def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'user  was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def show
  @user = User.find(params[:id]) 
  end
  
  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User  was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'user  was successfully destroyed.' }
    end
  end

  private

  def user_params
      params.require(:user).permit(:name, :email, :password_digest, :password, :password_confirmation)
  end
end
