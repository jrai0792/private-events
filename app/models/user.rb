class User < ApplicationRecord
  validates :name, presence: true

  has_many :created_events, class_name: 'Event', foreign_key: 'creator_id'
  has_many :attendances, foreign_key: 'user_attended_id', class_name: 'Attendance'
  has_many :attended_events, through: :attendances
  # has_many :invited_users, foreign_key: "invitor_id", class_name: "User"
  # belongs_to :invitor, class_name: "User"

  has_many :sent_invitations, foreign_key: :invitor_id, class_name: 'Invitation'
  has_many :received_invitations, foreign_key: :invitee_id, class_name: 'Invitation'
end
