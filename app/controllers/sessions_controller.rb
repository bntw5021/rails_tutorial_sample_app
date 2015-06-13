class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # ユーザーをサインインさせ、ユーザーページ (show) にリダイレクトする。
    else
      # エラーメッセージを表示し、サインインフォームを再描画する。
    end  
  end

  def destroy
  end
end