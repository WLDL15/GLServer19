# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'ready ajaxComplete', ->
    $('.new_alpha_comment').on 'ajax:success', (e, data) ->
        $('#ajax_evidence').empty()
        $('#ajax_evidence').append(data)


$(document).on 'ready ajaxComplete', ->
    $('.new_alpha_comment').on 'ajax:error', (e, data) ->
        alert '失敗'


$(document).on 'ready ajaxComplete', ->
    $('.alpha_dalete_comment').on 'ajax:success', (e, data) ->
        $('#ajax_evidence').empty()
        $('#ajax_evidence').append(data)

$(document).on 'ready ajaxComplete', ->
    $('.alpha_dalete_comment').on 'ajax:error', (e, data) ->
        alert '失敗'




$(document).on 'turbolinks:load', ->
    $('.new_alpha_comment').on 'ajax:success', (e, data) ->
        $('#ajax_evidence').empty()
        $('#ajax_evidence').append(data)

$(document).on 'turbolinks:load', ->
    $('.new_alpha_comment').on 'ajax:error', (e, data) ->
        alert '失敗'


$(document).on 'turbolinks:load', ->
    $('.alpha_dalete_comment').on 'ajax:success', (e, data) ->
        $('#ajax_evidence').empty()
        $('#ajax_evidence').append(data)

$(document).on 'turbolinks:load', ->
    $('.alpha_dalete_comment').on 'ajax:error', (e, data) ->
        alert '失敗'