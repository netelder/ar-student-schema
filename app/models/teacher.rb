require_relative '../../db/config'

class Teacher < ActiveRecord::Base

  attr_reader :id
  
  has_many :students
  
  validates :email, :format => {:with => /\S+@\S+\.\S{2,}/}
  validates :phone, :length => {:minimum => 10}
  validates :email, :uniqueness => true

  def name
    self.first_name + " " + self.last_name
  end

end
