module ContactApiGem
 class Contact

  attr_accessor :id, :name, :email, :twitter, :phone, :birthday, :relationship

  def self.proccess_batch(contacts)
    contacts.map {|contact| new(contact)}
  end

  def initialize(contact)
    @id = contact['id']
    @name = contact['name']
    @email = contact['email']
    @twitter = contact['twitter']
    @phone = contact['phone']
    @birthday = contact['birthday']
    @relationship = contact['relationship']
  end

  def yell_name
    name.upcase + "!!!"
  end

  def get_name_with_id
    "Contact: #{name}, id: #{id}" 
  end

 end
end