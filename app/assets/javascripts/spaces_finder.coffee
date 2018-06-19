class SpacesFinder
  constructor: () ->
    @search_results = $('.result')
    @init() if @search_results.length

  init: () ->
    setTimeout (->
      $('.loading-container').hide()
      $('.displayed-results-wrapper').show()
    ), 3000

    modal = $('#interest-modal')
    @search_results.each (index, result) ->
      $(result).find('.btn').on 'click', (e) ->
        modal.find('.modal-body').html("")
        clicked_btn = $(e.target)
        modal.modal()
        modal.find('.modal-body').html("
          <p>
            You are interested in:
            <br>
            #{clicked_btn.parent().find('span').html()}
          </p>
          <a href='#' class='btn btn-lg btn-warning talk-to-cm' data-turbolinks='false'>Talk to the CM</a>
        ")
        modal.find('.talk-to-cm').on 'click', (e) ->
          modal.find('.modal-body').html("
            <h1 class='mb-0'>😃</h1>
            Great! Someone from our community team will be in touch within 24 hours to learn more about your plans!
          ")


$(document).on 'turbolinks:load', ->
  new SpacesFinder;
