class WelcomeController < ApplicationController
helper PointLineItemsHelper
  def index
	render "welcome/index"
  end
end
