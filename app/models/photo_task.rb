class PhotoTask < ActiveRecord::Base
    has_one :task, as: :element
    has_one :point_task, through: :tasks
end
