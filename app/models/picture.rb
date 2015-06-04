class Picture < ActiveRecord::Base
  belongs_to :product

  before_create :default_name

  def default_name
    self.name ||= File.basename(image.filename, '.*').titleize if image
  end
end

