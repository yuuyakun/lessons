class UsersController < ApplicationController
  def index
    @users=User.all
  end

  def new
    @user= User.new
  end

  def create
    @user = User.new(name: params[:name],email: params[:email])
      if @user.save
      flash[:notice]= "ユーザー登録が完了しました"
      redirect_to("/users/index")

      else
      render("users/new")
      end

  end

  def login_form
  end

end
