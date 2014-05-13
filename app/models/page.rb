class Page < ActiveRecord::Base
  validates_presence_of :name, :content
  validates_uniqueness_of :permalink
  
  def to_param
    permalink
  end
end
