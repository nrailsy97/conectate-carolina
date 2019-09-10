class Message < ApplicationRecord
  validates :title, :body, :message_type, :titulo, :cuerpo, presence: true

  # default_scope { order(created_at: :desc) }
  scope :posted, -> { where(posted: true).where.not(posted_at: nil) }
  scope :unposted, -> { where(posted: false).where.not(posted_at: nil) }
  scope :postable, -> { where(posted: false, posted_at: nil) }

end
