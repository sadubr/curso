class Training < ActiveRecord::Base
  belongs_to :instructor

  cattr_reader :per_page
  @@per_page = 4

end

