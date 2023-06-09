class UsersController < ApplicationController
  def index
    @users = User.all.order(created_at: :desc)
  end

  def show

  end

  def destroy
    @user = User.find(params['id'])
    @user.destroy
    
    respond_to do |format|
      format.html { redirect_to users_path, notice: 'User was successfully destroyed.' }
      format.turbo_stream
    end
  end
end
