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
   puts "users#update"
   @user = User.find_by(id: params[:id])
   if @user
     puts "成功"
   end
   @user.name = params[:name]
   @user.mail = params[:mail]
#トランザクションが発生してロールバックしてる？
   if @user.save
     redirect_to("/users/#{@user.id}")
   else
     puts "失敗"
 end
end


  def login
    @user = User.find_by(mail: params[:mail])
    if @user
      if @user.password == params[:password]#&& @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to("/users/#{@user.id}")
    end
  else
  puts @user.password
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
