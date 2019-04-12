class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token
  def create
    @user = User.new(params[user_params])
    if @user.save
      redirect_to @user
    else
      render :new
      render json:@user
    end

  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    render json:@user
  end

  def update
    @user = User.find(params[:id])
    if @user.update(params[user_params])
      redirect_to(@user)
    else
      render :edit
      render json:@user
    end
  end

  def user_with_most_tickets
    usuario = User.select(:user).order(count(:order_id) ,desc).limit(1)
    return usuario.name
    render json:@event
  end

  private
    def user_params
      params.require(:user).permit(:name,:lastname ,:email, :password, :address)
    end

end
