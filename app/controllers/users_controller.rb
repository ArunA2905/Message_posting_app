class UsersController < ApplicationController 
  def show 
    @user = User.find(params[:id])
    #@messages = @user.message.paginate(page: params[:page], per_page: 3) 
    @messages = @user.messages
end

def index
   @users = User.all
    #@users = User.paginate(page: params[:page], per_page: 3) 
end 


def new
    @user = User.new
end

def edit 
    @user = User.find(params[:id])
end

def update
    @user = User.find(params[:id])
    if @user.update(user_params)
        flash[:notice] = "Your account information was successfully updated"
        redirect_to @user
    else 
        render 'edit'
    end
end

def create 
    @user = User.new(user_params)
    if @user.save
        flash[:notice] = "Welcome to the Alphog Blog #{@user.username}, you have successfully signed up"
        redirect_to articles_path
    else 
        render 'new'
    end
end

def destroy
    @user = current_user.users.find(params[:id])
    if @user.destroy
        redirect_to root_path
    else 
        flash[:notice] = "Logout not successfull"
    end
end

private

def user_params
    params.require(:user).permit(:username, :email, :password)
end

end