# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'turbolinks:load', ->
    $('.like_create').on 'ajax:success', (e, response) ->
        $('.like_create').off('ajax:success')
        set_area = $(this)
        input_html set_area, response
        
    $('.like_delete').on 'ajax:success', (e, response) ->
        $('.like_delete').off('ajax:success')
        set_area = $(this)
        out_html set_area, response
        

$(document).bind 'ready ajaxComplete', ->
    $('.like_create').on 'ajax:success', (e, response) ->
        $('.like_create').off('ajax:success')
        set_area = $(this)
        input_html set_area, response
        
        
    $('.like_delete').on 'ajax:success', (e, response) ->
        $('.like_delete').off('ajax:success')
        set_area = $(this)
        out_html set_area, response


input_html = (area, create) ->
    like_url = "/likes/" + create.id
    area.attr('href', like_url)
    area.html('いいね解除')
    area.data('method', 'delete')
    area.addClass('like_delete')
    area.removeClass('like_create')

out_html = (area, destroy) ->
    like_url = "/alpha_comments/" + destroy.id + "/likes"
    area.attr('href', like_url)
    area.html('いいね')
    area.data('method', 'post')
    area.addClass('like_create')
    area.removeClass('like_delete')