class Contact
  include ActiveModel::Model
  attr_accessor :company, :name, :tel, :address, :email, :subject,:message

  validates :company, {presence: true}
  validates :name, {presence: true}
  validates :tel, {presence: true}
  validates :address, {presence: true}
  validates :email, {presence: true}
  validates :subject, {presence: true}
  validates :message, {presence: true}
end
