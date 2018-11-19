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

  def login
    @user = User.find_by(email: params[:email],
      password: params[:password])

      if @User
        flash[:notice]="ログインしました！"
        redirect_to("posts/index")
      else
        @error_message="メールアドレスまたはパスワードが間違っています"
        @email=params[:email]
        @password=params[:password]
        render("users/login_form")
      end
  end

end
