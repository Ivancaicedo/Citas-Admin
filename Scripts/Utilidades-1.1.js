/// Array de objetos de utilidades 
var Utilidades = {
    /// muestra el panel de sesion
    mostrarContextoUsuario: function() {
        $(".contextoUsuario").slideToggle();
        $(".contextoUsuario").on("mouseleave", function() {
            $(".contextoUsuario").slideUp();
        });
        $("#usuarioContexto").text($("#loginViewUsuario").text());
    },
}
