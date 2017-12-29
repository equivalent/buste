class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_sign_map
  before_action :set_value_list

  private

  def set_sign_map
    @signs = CardSign.sign_map
  end

  def set_value_list
    @value_list = CardValue.value_list
  end
end
