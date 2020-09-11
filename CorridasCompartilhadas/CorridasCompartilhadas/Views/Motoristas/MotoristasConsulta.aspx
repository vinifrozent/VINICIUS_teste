<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MotoristasConsulta.aspx.cs" Inherits="CorridasCompartilhadas.Views.MotoristasConsulta.MotoristasConsulta" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label runat="server" ID="labelAviso"></asp:Label>
    
                        <div class="row form-section page-section">  
                            <div class="col-lg-12 ">  
                                <div class="table-responsive">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
    AutoGenerateColumns="False" Width="100%" CssClass="table table-striped table-bordered table-hover" GridLines="None" EmptyDataText="Não há registros">
    <Columns>         
        <asp:BoundField DataField="IdMotorista" HeaderText="Id" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg"/>
        <asp:BoundField DataField="FirstName" HeaderText="Nome" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg"/>
        <asp:BoundField DataField="LastName" HeaderText="Sobrenome" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg"/>
        <asp:BoundField DataField="DataNascimento" dataformatstring="{0:dd/MM/yyyy}" HeaderText="Data de Nascimento" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg"/>
        <asp:BoundField DataField="CPF" HeaderText="CPF" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg"/>
        <asp:BoundField DataField="Sexo" HeaderText="Sexo" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg"/>
        <asp:BoundField DataField="Telefone" HeaderText="Telefone" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg"/>
        <asp:BoundField DataField="Placa" HeaderText="Placa do Carro" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg"/>
        <asp:BoundField DataField="ModeloCarro" HeaderText="Modelo do Carro" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg"/>
    </Columns>
    </asp:GridView>
        </div>
    </div>
    </div>
</asp:Content>