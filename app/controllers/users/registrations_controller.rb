class Users::RegistrationsController < Devise::RegistrationsController
  def create
    params[:user].permit!
    @user = User.new(email: params.dig(:user,:email), password: params.dig(:user,:password))

    respond_to do |format|
      if @user.save
        UserMailer.welcome_email(@user).deliver_now #deliver_later

        format.html { redirect_to(:new_user_session, notice: 'User was successfully created.') }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
end