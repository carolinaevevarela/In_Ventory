class ApplicationController < ActionController::Base
  before_action :set_categories

  private

  def set_categories
   @categoriesmenu = Category.all
  end
end
