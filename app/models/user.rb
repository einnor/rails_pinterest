# @Author: Ronnie Nyaga <Ronnie>
# @Date:   2016-06-09T10:46:37+03:00
# @Email:  ronnienyaga@gmail.com
# @Last modified by:   Ronnie
# @Last modified time: 2016-06-11T11:44:11+03:00



class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  acts_as_voter

  has_many :pins
end
