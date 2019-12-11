# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$(document).on 'turbolinks:load', ->
    $('.new_alpha_comment').on 'ajax:success', (e, data) ->
        if (typeof data == "undefined")
            $(this).off('ajax:success')
            alert 'コメントを100文字以上にしないでください'
        else
            $('#ajax_evidence').empty()
            $('#ajax_evidence').append(data)
        

    $('.new_alpha_comment').on 'ajax:error', (e, data) ->
        alert 'コメントを100文字以上にしないでください'

    $('.alpha_dalete_comment').on 'ajax:success', (e, data) ->
        $('#ajax_evidence').empty()
        $('#ajax_evidence').append(data)

    $('.alpha_dalete_comment').on 'ajax:error', (e, data) ->
        alert '失敗'


$(document).bind 'ready ajaxComplete', ->
    $('.new_alpha_comment').on 'ajax:success', (e, data) ->
        if (typeof data == "undefined")
            $(this).off('ajax:success')
            alert 'コメントを100文字以上にしないでください'
        else
            $('#ajax_evidence').empty()
            $('#ajax_evidence').append(data)

    $('.new_alpha_comment').on 'ajax:error', (e, data) ->
        alert 'コメントを100文字以上にしないでください'

    $('.alpha_dalete_comment').on 'ajax:success', (e, data) ->
        $('#ajax_evidence').empty()
        $('#ajax_evidence').append(data)

    $('.alpha_dalete_comment').on 'ajax:error', (e, data) ->
        alert '失敗'


