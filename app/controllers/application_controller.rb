class ApplicationController < ActionController::Base

  private

  def current_account
    @account ||= Account.find_by(name: cookies['current_account_name'])
  end
  helper_method :current_account
end
