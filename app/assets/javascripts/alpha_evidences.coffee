# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$(document).on 'ready ajaxComplete', ->
    $('.edit_alpha_evidence').on 'ajax:success', (e, data) ->
        
        if data.completed
            $('#icon' + data.id).empty()
            $('#icon' + data.id).append('<i class="far fa-lg fa-check-square"></i>')
            $('#evidence-completed-' + data.id).html(data.date)
        else
            $('#icon' + data.id).empty()
            $('#icon' + data.id).append('<i class="far fa-lg fa-square"></i>')
            $('#evidence-completed-' + data.id).html("")

$(document).on 'ready ajaxComplete', ->    
    $('.edit_alpha_evidence').on 'ajax:error', (e, data) ->
        alert '保存されませんでした'



$(document).on 'turbolinks:load', ->
    $('.edit_alpha_evidence').on 'ajax:success', (e, data) ->
        if data.completed
            $('#icon' + data.id).empty()
            $('#icon' + data.id).append('<i class="far fa-lg fa-check-square"></i>')
            $('#evidence-completed-' + data.id).html(data.date)
        else
            $('#icon' + data.id).empty()
            $('#icon' + data.id).append('<i class="far fa-lg fa-square"></i>')
            $('#evidence-completed-' + data.id).html("")

$(document).on 'turbolinks:load', ->    
    $('.edit_alpha_evidence').on 'ajax:error', (e, data) ->
        alert '保存されませんでした'