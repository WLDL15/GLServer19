# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$(document).on 'turbolinks:load', ->
    $('.evidence_button').click ->
        api_url = window.location.pathname
        evidence_id = $(this).attr('id')
        $.ajax
            url: api_url
            type: 'GET'
            dataType:'html'
            async: true
            data: ('key=' + evidence_id)
            processData: false
            contentType: false
        
        .done (response) ->
            #alert evidence_id
            $('#ajax_evidence').empty()
            $('#ajax_evidence').append(response)
            #S('#card' + evidence_id).addClass('card p-1 mt-1 border-danger')
            
            ### alert $('#alpha_evidence_document').val()
            evidence_id = "edit_alpha_evidence" + response.id
            evidence_url = "/alpha_items/" + response.id +  "/alpha_evidence." + response.id
            evidence_document = response.document
            $('.edit_alpha_evidence').attr('id', evidence_id)
            $('.edit_alpha_evidence').attr('action', evidence_url)
            $('#alpha_evidence_document').val(evidence_document)
            if response.completed
                $('#alpha_evidence_completed').prop('checked', true)
            else
                $('#alpha_evidence_completed').prop('checked', false) ###

        .fail (response) ->
            alert '失敗'
    
    $('.state_button').click ->
        Turbolinks.clearCache()

    