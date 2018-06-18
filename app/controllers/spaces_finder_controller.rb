class SpacesFinderController < ApplicationController
  def create
    redirect_to :relevant_growth_spaces
  end

  def show
    @data = fake_results[current_account.name]
    results = @data[:results]
    @results_same_building = results[:same_building]
    @results_other_buildings = results[:other_buildings]
  end

  private

  def fake_results
    {
      'Just Mobile Direct' => {
        new_memebers_count: 11,
        upcoming_date: 3,
        results: {
          same_building: [
            [1, 'Take a 4-person and 2-person office, on your floor, on <i>July 1st</i>, for <i>$6,040</i>'],
            [2, 'Take a 4-person office on your floor and a 1-person office one floor below you, on <i>August 1st</i>, for <i>$4,650</i>']
          ],
          other_buildings: [
            [3, 'Move all 11 members to one office in <i>750 Lexington Avenue</i> on <i>July 1st</i>, for <i>$8,600</i> (additional <i>$3,950</i>)'],
            [4, 'Move the additional 5 members to one office in <i>18 West 18th St.</i> on <i>August 1st</i>, for <i>$4,800</i>']
          ]
        }
      },
      'Associated Luxury Hotels' => {
        new_memebers_count: 25,
        upcoming_date: 4,
        results: {
          same_building: [
            [4, 'Take three 2-person offices, on your floor, on <i>July 1st</i>, for <i>$4,560</i>'],
            [5, 'Take a 7-person office on your floor, on <i>September 1st</i>, for <i>$4,350</i>'],
            [6, 'Move the current 20 members one floor down and take a 6-person office on the same floor, on <i>August 1st</i>, for <i>$17,050</i> (an additional <i>$1,970</i>)']
          ],
          other_buildings: [
            [7, 'Move to three adjacent 8-person offices in <i>777 6th Street NW</i>, on <i>August 1st</i>, for <i>$14,400</i> (savings of <i>$680</i>)']
          ]
        }
      }
    }
  end
end
