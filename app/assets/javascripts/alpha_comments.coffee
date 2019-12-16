# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


###$(document).on 'turbolinks:load', ->
    $('.new_alpha_comment').on 'ajax:success', (e, data) ->
        if (typeof data == "undefined")
            alert 'コメントを100文字以上にしないでください'
        else
            $('#ajax_evidence').empty()
            $('#ajax_evidence').append(data)
        $(this).off('ajax:success')

    $('.alpha_dalete_comment').on 'ajax:success', (e, data) ->
        $('#ajax_evidence').empty()
        $('#ajax_evidence').append(data)###


$(document).on 'turbolinks:load ajax:success','.new_alpha_comment', (e, data) ->
    if (typeof data == "undefined")
        alert 'コメントを100文字以上にしないでください'
    else
        $('#ajax_evidence').empty()
        $('#ajax_evidence').append(data)
    $(this).off('ajax:success')

$(document).on 'turbolinks:load ajax:success','.alpha_dalete_comment', (e, data) ->    
    $('#ajax_evidence').empty()
    $('#ajax_evidence').append(data)



