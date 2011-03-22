class Project
  include Mongoid::Document
  field :name

  embeds_many :tasks

  validates :name, :presence => true
end
