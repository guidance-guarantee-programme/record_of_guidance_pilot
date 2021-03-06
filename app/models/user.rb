class User < ActiveRecord::Base
  devise :invitable, :database_authenticatable, :confirmable, :lockable, :timeoutable, :trackable, :validatable

  has_many :appointment_summaries

  def send_devise_notification(notification, *args)
    devise_mailer.send(notification, self, *args).deliver_later
  end
end
