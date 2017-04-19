
class User
  include DataMapper::Resource

  property :id, Serial, key: true
  property :username, String, length: 128
  property :email, String
  property :admin, Boolean, default: false

  property :password, BCryptHash

  def authenticate(attempted_password)
    if self.password == attempted_password
      true
    else
      false
    end
  end
end

