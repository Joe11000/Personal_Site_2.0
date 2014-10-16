class Home::Project < ActiveRecord::Base

  validates :name,        presence: true
  validates :language,    presence: true
  validates :description, presence: true
end
