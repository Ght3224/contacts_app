class Contact < ApplicationRecord



  def friendly_updated_at

    updated_at.strftime("Printed on %m/%d/%Y")

  end 

  def full_name 

    first_name + " " + last_name

  end 


end
