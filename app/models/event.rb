class Event < ApplicationRecord

 validates_presence_of :name

  def to_param
    self.friendly_id
  end

  protected
  def generate_friendly_id
    self.friendly_id ||= SecureRandom
  end
end
