module UsersHelper
  def name_errors
    @user.errors.full_messages_for(:name).first
  end

  def email_errors
    @user.errors.full_messages_for(:email).first
  end

  def password_errors
    @user.errors.full_messages_for(:password).first
  end
end
