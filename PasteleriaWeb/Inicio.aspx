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

                    <div class="form-group">
                        <label>Nombre Pastel</label>
                        <asp:TextBox runat="server" ID="txtNombrePastel" CssClass="form-control" />
                    </div>


                    <div class="form-group">
                        <label>Tamaño</label>
                        <asp:TextBox runat="server" ID="txtTamano" TextMode="Number" CssClass="form-control" />

                    </div>

                    <div class="form-group">

                        <asp:Button Text="Guardar" runat="server" ID="btnGuardar" CssClass="btn btn-success btn-block" />

                    </div>



                </div>
                <div class="col-md-6">

                    <asp:GridView ID="gvPasteles" runat="server" AutoGenerateColumns="False" DataKeyNames="idPastel" DataSourceID="SqlDataSource1" CssClass="table table-hover">
                        <Columns>
                            <asp:BoundField DataField="idPastel" HeaderText="idPastel" InsertVisible="False" ReadOnly="True" SortExpression="idPastel" />
                            <asp:BoundField DataField="nombrePastel" HeaderText="nombrePastel" SortExpression="nombrePastel" />
                            <asp:BoundField DataField="tamanio" HeaderText="tamanio" SortExpression="tamanio" />
                            <asp:CheckBoxField DataField="estado" HeaderText="estado" SortExpression="estado" />
                        </Columns>
                    </asp:GridView>

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PasteleriaDBConnectionString %>" SelectCommand="SELECT * FROM [Pastel] ORDER BY [nombrePastel]"></asp:SqlDataSource>

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
