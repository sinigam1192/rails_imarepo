class UsersController < ApplicationController

  def login_form
  end

  def create
    if params[:password] == params[:check_password]
    @user = User.new(
      name: params[:name],
      mail: params[:mail],
      password: params[:password],
      company_id: params[:company_id]
    )
      if @user
        @user.save
        session[:user_id] = @user.id
        redirect_to("/users/#{@user.id}")
      end
    end
  end

 def edit
   @user = User.find_by(id: params[:id])
 end

 def update
   @user = User.find_by(id: params[:id])
   @user.name = params[:name]
   @user.mail = params[:mail]
   @user.save
   redirect_to("/users/#{@user.id}")
 end


  def login
    @user = User.find_by(mail: params[:mail])
    if @user #&& @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to("/users/#{@user.id}")
    end
  end

  def user
    @user = User.find_by(id:params[:id])
  end

  def company
  end

  def mylist
    @user = User.find_by(id: session[:user_id])
  end

  def new_user
  end
end
