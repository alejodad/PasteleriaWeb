<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="PasteleriaWeb.Inicio" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Pasteleria Sebastian</title>

    <link href="Content/bootstrap.min.css" rel="stylesheet" />

    <style>
        body {
            padding-top: 70px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">

        <%-- <asp:Label ID="lblHora" Text="Hora" runat="server" />



        <button id="btnBoton1" runat="server">
            Hola mundo
        </button>

        <asp:Button ID="btnBoton2" runat="server" Text="Hola" />
        <asp:LinkButton Text="Hola" runat="server" />
        
        <button id="Button1" type="button" onclick="mostrarAlert();">
            Hola mundo
        </button>--%>

        <div class="container">

            <div class="row">

                <div class="col-md-6">

                    <h3>Formulario de pastel</h3>
                    <asp:Panel runat="server" Visible="false" ID="PanelAlerta">
                        <div class="alert alert-success alert-dismissible" role="alert">
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <strong>Buen trabajo!</strong>
                            <label>
                                El pastel ha sido agregado con éxito. 
                            </label>
                        </div>
                    </asp:Panel>

                    <asp:Panel ID="pnlAlertaError" runat="server" Visible="false">


                        <div class="alert alert-danger alert-dismissible" role="alert">
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <strong>Oppssss!</strong>
                            <label>
                                Ocurrio un error al intentar guardar el pastel. 
                            </label>
                        </div>


                    </asp:Panel>
                    <div class="form-group">
                        <asp:TextBox runat="server" ID="txtIdPastel" CssClass="form-control" Visible="false" />
                    </div>

                    <div class="form-group">
                        <label>Nombre Pastel</label>
                        <asp:TextBox runat="server" ID="txtNombrePastel" CssClass="form-control" />
                    </div>


                    <div class="form-group">
                        <label>Tamaño</label>
                        <asp:TextBox runat="server" ID="txtTamano" TextMode="Number" CssClass="form-control" />

                    </div>

                    <div class="form-group">

                        <asp:Button Text="Guardar" runat="server" ID="btnGuardar" CssClass="btn btn-success btn-block" OnClick="btnGuardar_Click" />

                    </div>



                </div>
                <div class="col-md-6">
                    <div class="tamanio-tabla table-responsive">
                        <asp:GridView ID="gvPasteles" runat="server" AutoGenerateColumns="False" CssClass="table table-hover" GridLines="None" OnRowCommand="gvPasteles_RowCommand">
                            <Columns>
                                <asp:BoundField DataField="idPastel" HeaderText="Codigo Pastel" />
                                <asp:BoundField DataField="nombrePastel" HeaderText="Nombre Pastel" />
                                <asp:BoundField DataField="tamanio" HeaderText="Tamaño en porciones " />
                                <asp:BoundField DataField="estado" HeaderText="Estado" />
                                <asp:CheckBoxField DataField="estado" HeaderText="Estado (Activo/Inactivo)" SortExpression="estado" />
                                <asp:ButtonField CommandName="btnActualizar" ControlStyle-CssClass="btn btn-primary " Text="Actualizar" />
                                <asp:ButtonField CommandName="btnCambiarEstado" ControlStyle-CssClass="btn btn-primary " Text="CambiarEstado" />
                            </Columns>
                        </asp:GridView>

                        <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PasteleriaDBConnectionString %>" SelectCommand="SELECT * FROM [Pastel] ORDER BY [nombrePastel]"></asp:SqlDataSource>--%>
                    </div>
                </div>

            </div>

        </div>


    </form>

    <script>

        //function mostrarAlert() {
        //    alert("Hola");
        //}

    </script>

    <script src="scripts/jquery-1.9.1.min.js"></script>
    <script src="scripts/bootstrap.min.js"></script>
</body>
</html>
