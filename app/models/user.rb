class User < ApplicationRecord
  # Include default devise modules. Others available are:
  #  and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable, :timeoutable

  has_many :scouts
  has_many :clients, through: :scouts
  has_many :qualification_users
  has_many :qualification, through: :qualification_users
  has_many :job_objective_users
  has_many :job_objectives, through: :job_objective_users
  has_many :careers

  validates :last_name,
            :first_name,
            :last_name_kana,
            :first_name_kana,
            :email,
            :employment_status,
            :address_city,
            :address_building,
            length: { maximum: 50, too_long: "最大%{count}文字まで使用できます"}

  validates :personal_summary,
            length: { maximum: 300, too_long: "最大%{count}文字まで使用できます"}

end
