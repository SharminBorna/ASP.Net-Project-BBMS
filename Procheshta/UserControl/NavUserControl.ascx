<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="NavUserControl.ascx.cs" Inherits="Procheshta.UserControl.NavUserControl" %>

<ul class="navbar-nav mr-auto">
    <li class="nav-item active">
        <a class="nav-link" href="/"> <i class="fa fa-fw fa-home"></i> Home <span class="sr-only">(current)</span></a>
    </li>     
    <li class="nav-item">
        <a class="nav-link" runat="server" href="~/Admin/Admin.aspx"><i class="fa fa-fw fa-user"></i> Admin</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" runat="server" href="~/Donor/Donors.aspx">Donors</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" runat="server" href="~/Patient/Patients.aspx">Patients</a>
    </li>
</ul>
