class Task
  include Mongoid::Document

  field :title
  field :description
  field :priority, :type => Integer

  embedded_in :project, :inverse_of => :tasks
end
