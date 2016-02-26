class ColcalController < ApplicationController
  def index
  @combinations = Combination.all
  end
end
