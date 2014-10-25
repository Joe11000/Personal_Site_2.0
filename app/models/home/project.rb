class Home::Project < ActiveRecord::Base

  validates :name,        presence: true
  validates :language,    presence: true
  validates :description, presence: true

  belongs_to :coding_language

  def self.get_languages
    Home::Project.group(:language).pluck(:language).sort
  end

  def self.get_projects_with_coding_languages_hash
    hash = {}

    get_languages.each do |l|
      hash[l] = self.where(language: l)
    end

    hash
  end

end
