<%@ Page Title="AlixCaicedoNails" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Citas_Admin._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <div class="logo"> 
            <img id="imgLogo" src="../img/Logo.png">
        </div>
        <div class="TableLogin">
            <table>
                <tbody>
                    <tr>
                        <td>
                            <table>
                                <tbody>
                                    <tr>
                                        <td align="right">
                                            <asp:Label ID="LblNombreUsuario" runat="server" Text="Usuario"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TxtNombreUsuario" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <asp:Label ID="LblContrasena" runat="server" Text="Contraseña"></asp:Label>
                                        </td>
                                        <td>

                                            <asp:TextBox ID="TxtContraseña" runat="server" TextMode="Password"></asp:TextBox>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td>
                                            <asp:Label ID="lblError" runat="server" Text="" ForeColor="red"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">

                                            <asp:Button ID="BtnSesion" runat="server" Text="Iniciar Sesión" OnClick="BtnSesion_Click"/>

                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>

    



    

</asp:Content>
