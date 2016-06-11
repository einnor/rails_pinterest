# @Author: Ronnie Nyaga <Ronnie>
# @Date:   2016-06-09T08:43:54+03:00
# @Email:  ronnienyaga@gmail.com
# @Last modified by:   Ronnie
# @Last modified time: 2016-06-11T10:47:49+03:00



Rails.application.routes.draw do
  devise_for :users
  resources :pins do
    resources :comments
    member do
      put "like", to: "pins#upvote"
    end
  end

  root "pins#index"
end
