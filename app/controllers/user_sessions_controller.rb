class UserSessionsController < ApplicationController
  def new
    @user = User.new
    @titulo = "Usuario Registrado"
  end

  def create
    if @user = login(params[:email], params[:password])
      redirect_back_or_to(:datos, notice: 'Login Completado')
    else
      flash.now[:alert] = 'Login Erroneo'
      render action: 'new'
    end
  end

  def destroy
    logout
    #redirect_to(:users, notice: 'Logged out!')
    redirect_to(:root, notice: 'Logged out!')
  end
end
