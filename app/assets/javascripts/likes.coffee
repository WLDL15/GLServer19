# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'turbolinks:load', ->
    $('.like_create').on 'ajax:success', (e, response) ->
        $('.like_create').off('ajax:success')
        like_url = "/likes/" + response.id
        $(this).attr('href', like_url)
        $(this).html('いいね解除')
        $(this).data('method', 'delete')
        $(this).addClass('like_delete')
        $(this).removeClass('like_create')
        
    $('.like_delete').on 'ajax:success', (e, response) ->
        $('.like_delete').off('ajax:success')
        like_url = "/alpha_comments/" + response.id + "/likes"
        $(this).attr('href', like_url)
        $(this).html('いいね')
        $(this).data('method', 'post')
        $(this).addClass('like_create')
        $(this).removeClass('like_delete')
        

$(document).bind 'ready ajaxComplete', ->
    $('.like_create').on 'ajax:success', (e, response) ->
        $('.like_create').off('ajax:success')
        like_url = "/likes/" + response.id
        $(this).attr('href', like_url)
        $(this).html('いいね解除')
        $(this).data('method', 'delete')
        $(this).addClass('like_delete')
        $(this).removeClass('like_create')
        
    $('.like_delete').on 'ajax:success', (e, response) ->
        $('.like_delete').off('ajax:success')
        like_url = "/alpha_comments/" + response.id + "/likes"
        $(this).attr('href', like_url)
        $(this).html('いいね')
        $(this).data('method', 'post')
        $(this).addClass('like_create')
        $(this).removeClass('like_delete')
       