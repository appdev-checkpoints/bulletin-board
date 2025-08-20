class BoardsController < ApplicationController
  def index
    render({ :template => "board_templates/index" }) 
  end

  def show
    render({ :template => "board_templates/show" })
  end
end
