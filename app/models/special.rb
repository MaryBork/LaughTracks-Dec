class Special < ActiveRecord::Base
  belongs_to :comedian

  validates :title, presence: :true

  def self.average_length
    average(:length)
  end

  def self.total_count
    count(:title)
  end

end
