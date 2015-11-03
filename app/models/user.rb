class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_create :set_default_role

   def role?(role_to_compare_to)
     role_to_compare_to == self.role.to_s
   end

   private
   def set_default_role
     unless self.role 
      self.role = 'user'
      self.save
    end
   end
end
