# @Author: Ronnie Nyaga <Ronnie>
# @Date:   2016-06-09T09:05:58+03:00
# @Email:  ronnienyaga@gmail.com
# @Last modified by:   Ronnie
# @Last modified time: 2016-06-09T10:48:38+03:00



class Pin < ActiveRecord::Base
  belongs_to :user
end
