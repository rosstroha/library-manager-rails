class LibraryController < ApplicationController
  respond_to :json
  def index
    render 'test'
  end
end