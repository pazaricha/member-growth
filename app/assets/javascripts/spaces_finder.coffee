class SpacesFinder
  constructor: () ->
    @search_results = $('.result')
    @init() if @search_results.length

  init: () ->
    @search_results.each (index, result) ->
      $(result).find('.btn').on 'click', (e) ->
        clicked_btn = $(e.target)
        console.log($(result).data('name'))

$(document).on 'turbolinks:load', ->
  new SpacesFinder;
