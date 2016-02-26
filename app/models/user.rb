class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  attr_accessor :combination_key
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         authentication_keys: [:email, :combination_key]

  belongs_to :combination
  has_many :calevents
  before_validation :combination_key_to_id, if: :has_combination_key?

  has_attached_file :avatar,
    styles: { medium: "100x100!",thumb:"100x100!" }

  validates_attachment_content_type :avatar,
    content_type: ["image/jpg","image/jpeg","image/png"]

  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    combination_key = conditions.delete(:combination_key)
    combination_id = Combination.where(key: combination_key).first
    email = conditions.delete(:email)

    # devise認証を、複数項目に対応させる
    if combination_id && email
      where(conditions).where(["combination_id = :combination_id AND email = :email",
        { combination_id: combination_id, email: email }]).first
    elsif conditions.has_key?(:confirmation_token)
      where(conditions).first
    else
      false
    end
  end
  private
  def has_combination_key?
    combination_key.present?
  end

  def combination_key_to_id
    combination = Combination.where(key: combination_key).first_or_create
    self.combination_id = combination.id
  end

end
