class PhotoTask < ActiveRecord::Base
    has_one :task, as: :element
    has_one :pointTask, class_name: "PointTask", through: :task, 
                        source: :point_task
end
