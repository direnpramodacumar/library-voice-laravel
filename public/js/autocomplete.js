$(function(){
    $( "#isbn" ).autocomplete({
        source: "/autocompleteBook",
        select: function(event, ui) {
            $('#isbn').val(ui.item.value);
            $('#bookid').val(ui.item.id);
        }
    });
});

$(function(){
    $( "#userid" ).autocomplete({
        source: "/autocompleteUser",
        select: function(event, ui) {
            $('#userid').val(ui.item.value);
            
        }
    });
});                                   