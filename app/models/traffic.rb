class Traffic < ActiveRecord::Base
  attr_accessible :wait, :place_id
  belongs_to :place
end