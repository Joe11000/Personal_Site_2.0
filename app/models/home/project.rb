class Home::Project < ActiveRecord::Base

  validates :name,        presence: true
  validates :language,    presence: true
  validates :description, presence: true

  belongs_to :coding_language
end
