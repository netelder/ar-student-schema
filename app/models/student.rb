require_relative '../../db/config'

class Student < ActiveRecord::Base

  attr_writer :teacher_id

  belongs_to :teacher

  validates :email, :uniqueness => true
  validates :email, :format => {:with => /\S+@\S+\.\S{2,}/}
  validates :phone, :length => {:minimum => 10}
  before_validation :old_enough?

  def name
    self.first_name + " " + self.last_name
  end

  def age
    ((DateTime.now - self.birthday)/365).to_i
  end

  def old_enough?
    self.age > 5
  end

end
