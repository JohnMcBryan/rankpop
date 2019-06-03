document.addEventListener("turbolinks:load", function(){
    $("#options").sortable({
        update: function(e,ui){
            var array = $(this).sortable("toArray");
            console.log(array);
            $("#array").val(array);
        }
    });
})