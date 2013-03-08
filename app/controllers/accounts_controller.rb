class AccountsController < ApplicationController


  def new
    @account = Account.new
  end

  def create
    @account =  Account.create(params[:account])
    current_user.account = @account
    current_user.save
    redirect_to  root_url
  end
end
