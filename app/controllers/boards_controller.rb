class BoardsController < ApplicationController
  def index
    render({ :template => "board_templates/index" }) 
  end
end
