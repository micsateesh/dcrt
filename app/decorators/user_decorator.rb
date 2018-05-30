class UserDecorator < Draper::Decorator
  include ActionView::Helpers::NumberHelper
  delegate :email

  def name
   "satish"
  end
end