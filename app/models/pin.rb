# @Author: Ronnie Nyaga <Ronnie>
# @Date:   2016-06-09T09:05:58+03:00
# @Email:  ronnienyaga@gmail.com
# @Last modified by:   Ronnie
# @Last modified time: 2016-06-09T16:00:11+03:00



class Pin < ActiveRecord::Base

  acts_as_votable
  acts_as_commentable
  
  belongs_to :user

  has_attached_file :image, styles: { medium: "300x300>"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

end
