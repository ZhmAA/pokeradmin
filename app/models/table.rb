class Table < ApplicationRecord
  has_and_belongs_to_many :users

  validates :title, presence: true, uniqueness: true
  validates :gamestart, presence: true

  scope :active_tables, -> { where('gamestart >= ?', Time.current) }
  scope :full_tables, -> { where('players < ?', 6) }

  def free_places
    if self.players < 6
      return true
    end
    false
  end

  def new_player
    self.players += 1
  end
end
