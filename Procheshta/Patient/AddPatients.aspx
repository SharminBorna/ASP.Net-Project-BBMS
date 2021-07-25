<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddPatients.aspx.cs" Inherits="Procheshta.Patient.AddPatients" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Content/font-awesome.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-12">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <h2>Patients Entry</h2>
                    <hr />
                    <div runat="server" class="alert alert-warning alert-dismissible fade show" id="alert" role="alert" visible="false">
                        <button type="button" class="close" data-dismiss="alert" aria-label="close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <p runat="server" id="msg"></p>
                    </div>
                    <div class="form-group row">
                        <asp:Label ID="Label1" CssClass="col-form-label col-md-2" AssociatedControlID="txtPatientName" runat="server" Text="Patient Name"></asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox CssClass="form-control form-control-md col-md-4" ID="txtPatientName" runat="server"></asp:TextBox>&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is Required" ForeColor="Red" ControlToValidate="txtPatientName" Display="Dynamic" ValidationGroup="Insert"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group row">
                        <asp:Label ID="Label2" CssClass="col-form-label col-md-2" runat="server" AssociatedControlID="txtAge" Text="Age ( years )"></asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox CssClass="form-control form-control-sm col-md-4" ID="txtAge" runat="server"></asp:TextBox>&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Age is Required" ForeColor="Red" ControlToValidate="txtAge" Display="Dynamic" ValidationGroup="Insert"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group row">
                        <asp:Label ID="Label4" CssClass="col-form-label col-md-2" runat="server" AssociatedControlID="ddlGender" Text="Gender"></asp:Label>
                        <div class="col-md-9">
                            <asp:DropDownList ID="ddlGender" CssClass="form-control form-control-sm col-md-4" runat="server" DataValueField="gender" AppendDataBoundItems="true" AutoPostBack="True">
                                <asp:ListItem Value="" Selected="True">---Select One---</asp:ListItem>
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                                <asp:ListItem>Others</asp:ListItem>
                            </asp:DropDownList>
                            &nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Gender is Required" ForeColor="Red" ControlToValidate="ddlGender" Display="Dynamic" ValidationGroup="Insert"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group row">
                        <asp:Label ID="Label5" CssClass="col-form-label col-md-2" runat="server" AssociatedControlID="ddlBloodGroup" Text="Blood Group"></asp:Label>
                        <div class="col-md-9">
                            <asp:DropDownList ID="ddlBloodGroup" CssClass="form-control form-control-sm col-md-4" runat="server" DataValueField="bloodGroup" AppendDataBoundItems="true" AutoPostBack="True">
                                <asp:ListItem Value="" Selected="True">---Select One---</asp:ListItem>
                                <asp:ListItem>O+</asp:ListItem>
                                <asp:ListItem>O-</asp:ListItem>
                                <asp:ListItem>A+</asp:ListItem>
                                <asp:ListItem>A-</asp:ListItem>
                                <asp:ListItem>B+</asp:ListItem>
                                <asp:ListItem>B-</asp:ListItem>
                                <asp:ListItem>AB+</asp:ListItem>
                                <asp:ListItem>AB-</asp:ListItem>
                            </asp:DropDownList>
                            &nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Blood Group is Required" ForeColor="Red" ControlToValidate="ddlBloodGroup" Display="Dynamic" ValidationGroup="Insert"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group row">
                        <asp:Label ID="Label6" CssClass="col-form-label col-md-2" runat="server" AssociatedControlID="txtContactNo" Text="Contact No"></asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox CssClass="form-control form-control-sm col-md-4" ID="txtContactNo" runat="server"></asp:TextBox>&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Contact No is Required" ForeColor="Red" ControlToValidate="txtContactNo" Display="Dynamic" ValidationGroup="Insert"></asp:RequiredFieldValidator>
                        </div>
                    </div>                   
                    <div class="form-group row">
                        <asp:Label ID="Label8" CssClass="col-form-label col-md-2" runat="server" AssociatedControlID="txtAddress" Text="Address"></asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox CssClass="form-control form-control-sm col-md-4" ID="txtAddress" runat="server"></asp:TextBox>&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Address is Required" ForeColor="Red" ControlToValidate="txtAddress" Display="Dynamic" ValidationGroup="Insert"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>
    <div class="offset-2">
        <a class="btn btn-info" runat="server" href="~/Patient/Patients.aspx"><i class="fa fa-arrow-circle-o-left"></i> Back to List</a>
        <asp:Button ID="btnsubmit" ValidationGroup="Insert" runat="server" Text="Submit" CssClass="btn btn-success" OnClick="btnsubmit_Click"/>
    </div>
    <div class="form-group row">
        <div class="col-md-2 text-right pr-1 pt-2">
            <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
                <ProgressTemplate>
                    <i class="fa fa-spin fa-spinner fa-2x"></i>
                </ProgressTemplate>
            </asp:UpdateProgress>
        </div>
    </div>
    <asp:SqlDataSource ID="dsPatients" runat="server" ConnectionString="<%$ ConnectionStrings:ProcheshtaDBCon %>" DeleteCommand="DELETE FROM [Patients] WHERE [patientID] = @patientID" InsertCommand="INSERT INTO [Patients] ([patientName], [age], [gender], [bloodGroup], [contactNo], [Address]) VALUES (@patientName, @age, @gender, @bloodGroup, @contactNo, @Address)" SelectCommand="SELECT * FROM [Patients]" UpdateCommand="UPDATE [Patients] SET [patientName] = @patientName, [age] = @age, [gender] = @gender, [bloodGroup] = @bloodGroup, [contactNo] = @contactNo, [Address] = @Address WHERE [patientID] = @patientID">
       
        <InsertParameters>
            <asp:Parameter Name="patientName" Type="String" />
            <asp:Parameter Name="age" Type="Int32" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="bloodGroup" Type="String" />
            <asp:Parameter Name="contactNo" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
        </InsertParameters>
     
    </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>
