<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="SendMail.aspx.cs" Inherits="Procheshta.Admin.SendMail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col">
            <div class="offset-3 form-group">
                <h2 class="text-danger">Send Mail....</h2>
            </div>
            <div class="offset-3 form-group">
                <label class="control-label">To</label>
                <asp:TextBox ID="txtTo" runat="server" CssClass="form-control form-control-md col-md-6"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTo" ForeColor="Red" Display="Dynamic" ValidationGroup="Submit" ErrorMessage="Email address is required">
                </asp:RequiredFieldValidator>
            </div>
            <div class="offset-3 form-group">
                <label class="control-label">Subject</label>
                <asp:TextBox ID="txtSubject" runat="server" CssClass="form-control form-control-md col-md-6"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSubject" ForeColor="Red" Display="Dynamic" ValidationGroup="Submit" ErrorMessage="Subject is required">
                </asp:RequiredFieldValidator>
            </div>
            <div class="offset-3 form-group">
                <label class="control-label">Message</label>
                <asp:TextBox ID="txtMessage" TextMode="MultiLine" Height="100" runat="server" CssClass="form-control form-control-md col-md-6"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtMessage" ForeColor="Red" Display="Dynamic" ValidationGroup="Submit" ErrorMessage="Wright a massage">
                </asp:RequiredFieldValidator>
            </div>
            <div class="offset-3 form-group text-success">
                <asp:Button ID="btnSend" ValidationGroup="Submit" runat="server" CssClass="btn btn-info" OnClick="btnSend_Click" Text="Send mail" />&nbsp;
                <asp:Literal ID="Literal1" runat="server"></asp:Literal>
            </div>     
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>
