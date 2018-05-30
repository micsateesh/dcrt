class UserDecorator < Draper::Decorator
  include ActionView::Helpers::NumberHelper
  delegate :email

  def name
   "test"
  end
end