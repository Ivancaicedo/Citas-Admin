<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Principal.aspx.cs" Inherits="Citas_Admin.Paginas.Principal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Inicio - AlixCaicedoNails</title>
    <link href="~/favicon.png" rel="shortcut icon" type="image/x-icon" />
    <link href="/Content/Principal.css" type="text/css" rel="stylesheet" />
    <link href="/Content/Utilities.css" type="text/css" rel="stylesheet" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v6.2.0/css/all.css" crossorigin="anonymous" />
    <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script src="/Scripts/ListaMenu.js"></script>
    <script src="/Scripts/Utilidades-1.1.js" type="text/javascript"></script>
</head>
<body>
    <header>
        <div class="row">
            <div id="header_principal" runat="server">
                <div class="Encabezado">
                    <img id="imgLogoPrincipal" src="../img/Logo.png" />
                </div>
                <div id="header_middle"></div>
                <div id="header_right" class="menuTopUsuario" runat="server">
                    <a href="#" class="d-flex items-align-right" onclick="javascript:Utilidades.mostrarContextoUsuario();">
                        <asp:Label id="loginViewUsuario" runat="server" Text=""></asp:Label>
                        <div>
                            <img class="usuario" src="/Img/Iconos/usuario.svg"/>
                        </div>
                    </a>
                    <div class="contextoUsuario" style="display:none">
                        <div class="align-items-center">
                            <div class="align-items-center flex-column">
                                <asp:Label id="usuarioContexto" runat="server" Text=""></asp:Label>
                                <span id="rolusuario">Administrador</span>
                            </div>
                            <div class="align-items-center flex-column btnSesion">
                                <form runat="server">
                                    <div class="borderGeneralWhite">
                                          <asp:Button ID="btnClave" class="btnSesion" runat="server" Text="Cambiar clave"/>
                                    </div>
                                    <div class="borderGeneralWhite">                                       
                                        <asp:Button ID="btnCerrarSesion" class="btnSesion" runat="server" Text="Cerrar Sesión" OnClick="CerrarSesion_Click"/>  
                                    </div>
                                </form>                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>            
        </div>
    </header>
    <nav class="menu_left">
        <ul class="menu">
            <li class="list_item list_item--click">  
                <div class="list_button list_button--click">
               <a href="#" class="nav_link">
                    <i class="fa-solid fa-key"></i>
                   Seguridad
                   <i class="fa-solid fa-caret-down"></i>
               </a>
               </div>
               <ul class="list_show">
                  <li class="list_inside">
                      <a href="#" class="nav_link nav_link--inside">
                         <i class="fa-solid fa-user"></i>
                         Perfiles
                      </a>
                  </li>
                  <li class="list_inside">
                      <a href="#" class="nav_link nav_link--inside">
                          <i class="fa-solid fa-users"></i>
                          Usuarios
                      </a>
                  </li>
               </ul>
            </li>
            <li class="list_item list_item--click">  
                <div class="list_button list_button--click">
                    <a href="#" class="nav_link">
                        <i class="fa-solid fa-handshake-simple"></i>
                        Servicios
                        <i class="fa-solid fa-caret-down"></i>
                    </a>
                </div>
            </li>
        </ul>
    </nav>
</body>
</html>
