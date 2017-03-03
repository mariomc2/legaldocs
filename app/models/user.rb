class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :role, optional: true
  has_many :items

  validates_presence_of :name
	before_save :assign_role

	def assign_role
	  self.role = Role.find_by name: "Regular" if self.role.nil?
	end

  def admin?
    self.role.name == "Admin"
  end
  def checker?
    self.role.name == "Checker"
  end
  def regular?
    self.role.name == "Regular"
  end
end
