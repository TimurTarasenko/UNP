class UsePhoneSystemsController < ApplicationController
  before_filter :authorize

  def index
    @grid = UsePhoneSystemsGrid.new(params[:use_phone_systems_grid]) do |scope|
      scope.page(params[:page])
    end
  end

end

