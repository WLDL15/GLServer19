# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

###$(document).on 'turbolinks:load', ->
    $('.like_create').on 'ajax:success', (e, response) ->
        console.log response
        set_area = $(this)
        input_html set_area, response
        $(this).off('ajax:success')
        
    $('.like_delete').on 'ajax:success', (e, response) ->
        console.log response
        set_area = $(this)
        out_html set_area, response
        $(this).off('ajax:success')###
            

$(document).on 'turbolinks:load ajax:success','.like_create', (e, options) ->
    set_area = $(this)
    input_html set_area, options
    $(this).off('ajax:success')
    
$(document).on 'turbolinks:load ajax:success','.like_delete', (e, options) ->
    set_area = $(this)
    out_html set_area, options
    $(this).off('ajax:success')


input_html = (area, create) ->
    like_url = "/likes/" + create.id
    area.attr('href', like_url)
    area.html('<i class="far fa-heart"></i>')
    area.data('method', 'delete')
    area.addClass('like_delete')
    area.removeClass('like_create')
    $("#count_like_" + create.alpha_comment_id ).html('(' + create.count + ')')

out_html = (area, destroy) ->
    like_url = "/alpha_comments/" + destroy.id + "/likes"
    area.attr('href', like_url)
    area.html('<i class="fas fa-heart iine-color"></i>')
    area.data('method', 'post')
    area.addClass('like_create')
    area.removeClass('like_delete')
    $("#count_like_" + destroy.id ).html('(' + destroy.count + ')')