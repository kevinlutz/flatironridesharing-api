class Trip  < ActiveRecord::Base
    belongs_to :riders
    belongs_to :drivers

    
end