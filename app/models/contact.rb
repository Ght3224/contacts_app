class Contact < ApplicationRecord
  belongs_to :user
  has_many :user_groups 
  has_many :groups, through: :user_groups 

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP, message:
    'only allows valid emails' }



  def friendly_updated_at

    updated_at.strftime("Printed on %m/%d/%Y")

  end 

  def full_name 
    first_name + " " + last_name
  end

end
