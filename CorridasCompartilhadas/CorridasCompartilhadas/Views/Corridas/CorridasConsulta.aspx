<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CorridasConsulta.aspx.cs" Inherits="CorridasCompartilhadas.Views.CorridasConsulta.CorridasConsulta" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

        <asp:Label runat="server" ID="labelAviso"></asp:Label>
    
                        <div class="row form-section page-section">  
                            <div class="col-lg-12 ">  
                                <div class="table-responsive">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
    AutoGenerateColumns="False" Width="100%" CssClass="table table-striped table-bordered table-hover" GridLines="None" EmptyDataText="Não há registros">
    <Columns>         
        <asp:BoundField DataField="PassFullName" HeaderText="Passageiro" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg"/>
        <asp:BoundField DataField="MotFullName" HeaderText="Motorista" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg"/>
        <asp:BoundField DataField="Placa" HeaderText="Placa do Carro" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg"/>
        <asp:BoundField DataField="Valor" HeaderText="Valor da Corrida" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg"/>
        <asp:BoundField DataField="Origem" HeaderText="Cidade Partida" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg"/>
        <asp:BoundField DataField="ufOrigem" HeaderText="UF" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg"/>
        <asp:BoundField DataField="Destino" HeaderText="Cidade Chegada" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg"/>
        <asp:BoundField DataField="ufDestino" HeaderText="UF" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg"/>
    </Columns>
    </asp:GridView>
        </div>
    </div>
    </div>
</asp:Content>
