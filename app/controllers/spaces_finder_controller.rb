class SpacesFinderController < ApplicationController
  def create
    # ...find spaces
    redirect_to :relevant_growth_spaces
  end

  def show

  end

  private

  def space_finder_params
    params.permit(:new_memebers_count, :growth_date)
  end
end
