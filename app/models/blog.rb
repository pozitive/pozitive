class Blog < ActiveRecord::Base
  validates_presence_of :name, :content
  validates_uniqueness_of :permalink
  validates_length_of :summary, :keyword, :permalink, :name, :maximum => 250
  
  belongs_to :admin
  
  mount_uploader :image, ImageUploader

  def to_param
    permalink
  end
end
