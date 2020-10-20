class StaticController < ApplicationController
  layout 'static'

  def home
    render '/layouts/home'
  end
end
