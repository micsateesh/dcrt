class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  delegate :email, :created_at, to: :user, prefix: true, allow_nil: true
  has_many :entry
  def hello
    'fdfdgg'
  end

  def check_entry
    entry.first.name if entry.present?
  end
end
