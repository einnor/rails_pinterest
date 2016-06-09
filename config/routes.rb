# @Author: Ronnie Nyaga <Ronnie>
# @Date:   2016-06-09T08:43:54+03:00
# @Email:  ronnienyaga@gmail.com
# @Last modified by:   Ronnie
# @Last modified time: 2016-06-09T14:42:47+03:00



Rails.application.routes.draw do
  devise_for :users
  resources :pins do
    member do
      put "like", to: "pins#upvote"
    end
  end

  root "pins#index"
end
