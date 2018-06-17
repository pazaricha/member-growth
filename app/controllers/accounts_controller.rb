class AccountsController < ApplicationController
  layout 'empty'

  def index
    @accounts = Account.all
  end

  def create
    cookies['current_account_name'] = params[:account_name]
    redirect_to dashboard_path
  end
end
