class ListingsController < ApplicationController
  def create
    # create a new listing record

    new_listing = Listing.new

    # populate its attributes using params from the form
    # Parameters look like this: {"title_param" => "Free concert", "body_param" => "At the piano in the lobby", "expires_on_param" => "2025-08-30"}

    new_listing.title = params.fetch("title_param")
    new_listing.body = params.fetch("body_param")
    new_listing.expires_on = params.fetch("expires_on_param")
    new_listing.board_id = params.fetch("board_id_param")

    # save it

    new_listing.save

    # redirect to the parent board's details page
    redirect_to("/boards/#{new_listing.board_id}", { :notice => "Listing created successfully." })
  end
end
