<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddDonors.aspx.cs" Inherits="Procheshta.Donor.AddDonors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Content/bootstrap-datepicker.standalone.css" rel="stylesheet" />
    <link href="../Content/font-awesome.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col">
            <h2>Donors Entry</h2>
            <hr />
            <div runat="server" class="alert alert-warning alert-dismissible fade show" id="alert" role="alert" visible="false">
                <button type="button" class="close" data-dismiss="alert" aria-label="close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <p runat="server" id="msg"></p>
            </div>
            <br />
            <div class="col-md-6 float-left">
                <div class="form-group row">
                    <asp:Label ID="Label1" CssClass="col-form-label col-md-3" AssociatedControlID="txtDonorName" runat="server" Text="Donor Name"></asp:Label>
                    <div class="col-md-9">
                        <asp:TextBox CssClass="form-control form-control-sm col-md-9" ID="txtDonorName" runat="server"></asp:TextBox>&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is Required" ForeColor="Red" ControlToValidate="txtDonorName" Display="Dynamic" ValidationGroup="Insert">
                            </asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group row">
                    <asp:Label ID="Label2" CssClass="col-form-label col-md-3" runat="server" AssociatedControlID="txtAge" Text="Age ( in years )"></asp:Label>
                    <div class="col-md-9">
                        <asp:TextBox CssClass="form-control form-control-sm col-md-9" ID="txtAge" runat="server"></asp:TextBox>&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Age is Required" ForeColor="Red" ControlToValidate="txtAge" Display="Dynamic" ValidationGroup="Insert"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Age must be Greater than 20" ControlToValidate="txtAge" Display="Dynamic" ForeColor="Red" MaximumValue="55" MinimumValue="20" ValidationGroup="Insert"></asp:RangeValidator>
                    </div>
                </div>
                <div class="form-group row">
                    <asp:Label ID="Label3" CssClass="col-form-label col-md-3" runat="server" AssociatedControlID="txtWeight" Text="Weight ( kg )"></asp:Label>
                    <div class="col-md-9">
                        <asp:TextBox CssClass="form-control form-control-sm col-md-9" ID="txtWeight" runat="server"></asp:TextBox>&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Weight is Required" ForeColor="Red" ControlToValidate="txtWeight" Display="Dynamic" ValidationGroup="Insert"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="Weight must be Greater than 45kg" ControlToValidate="txtWeight" Display="Dynamic" ForeColor="Red" MaximumValue="80" MinimumValue="45" ValidationGroup="Insert"></asp:RangeValidator>
                    </div>
                </div>
                <div class="form-group row">
                    <asp:Label ID="Label4" CssClass="col-form-label col-md-3" runat="server" AssociatedControlID="ddlGender" Text="Gender"></asp:Label>
                    <div class="col-md-9">
                        <asp:DropDownList ID="ddlGender" CssClass="form-control form-control-sm col-md-9" runat="server" DataValueField="gender" AppendDataBoundItems="true" AutoPostBack="True">
                            <asp:ListItem Value="" Selected="True">---Select Gender---</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                            <asp:ListItem>Others</asp:ListItem>
                        </asp:DropDownList>
                        &nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Gender is Required" ForeColor="Red" ControlToValidate="ddlGender" Display="Dynamic" ValidationGroup="Insert">
                        </asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group row">
                    <asp:Label ID="Label5" CssClass="col-form-label col-md-3" runat="server" AssociatedControlID="ddlBloodGroup" Text="Blood Group"></asp:Label>
                    <div class="col-md-9">
                        <asp:DropDownList ID="ddlBloodGroup" CssClass="form-control form-control-sm col-md-9" runat="server" DataValueField="bloodGroup" AppendDataBoundItems="true">
                            <asp:ListItem Value="" Selected="True">---Select Group---</asp:ListItem>
                            <asp:ListItem>O+</asp:ListItem>
                            <asp:ListItem>O-</asp:ListItem>
                            <asp:ListItem>A+</asp:ListItem>
                            <asp:ListItem>A-</asp:ListItem>
                            <asp:ListItem>B+</asp:ListItem>
                            <asp:ListItem>B-</asp:ListItem>
                            <asp:ListItem>AB+</asp:ListItem>
                            <asp:ListItem>AB-</asp:ListItem>
                        </asp:DropDownList>
                        &nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Blood Group is Required" ForeColor="Red" ControlToValidate="ddlBloodGroup" Display="Dynamic" ValidationGroup="Insert">
                        </asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>
            <div class="col-md-6 float-right">
                <div class="form-group row">
                    <asp:Label ID="Label6" CssClass="col-form-label col-md-3" runat="server" AssociatedControlID="txtContactNo" Text="Contact No"></asp:Label>
                    <div class="col-md-9">
                        <asp:TextBox CssClass="form-control form-control-sm col-md-9" ID="txtContactNo" runat="server"></asp:TextBox>&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Contact No is Required" ForeColor="Red" ControlToValidate="txtContactNo" Display="Dynamic" ValidationGroup="Insert"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group row">
                    <asp:Label ID="Label7" CssClass="col-form-label col-md-3" runat="server" AssociatedControlID="txtEmail" Text="Email"></asp:Label>
                    <div class="col-md-9">
                        <asp:TextBox CssClass="form-control form-control-sm col-md-9" ID="txtEmail" runat="server"></asp:TextBox>&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Email is Required" ForeColor="Red" ControlToValidate="txtEmail" Display="Dynamic" ValidationGroup="Insert"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Email Format" ForeColor="Red" ControlToValidate="txtEmail" Display="Dynamic" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="Insert"></asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="form-group row">
                    <asp:Label ID="Label8" CssClass="col-form-label col-md-3" runat="server" AssociatedControlID="txtDonorAddress" Text="Address"></asp:Label>
                    <div class="col-md-9">
                        <asp:TextBox CssClass="form-control form-control-sm col-md-9" ID="txtDonorAddress" runat="server"></asp:TextBox>&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Address is Required" ForeColor="Red" ControlToValidate="txtDonorAddress" Display="Dynamic" ValidationGroup="Insert"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group row">
                    <asp:Label ID="Label9" CssClass="col-form-label col-md-3" runat="server" AssociatedControlID="txtLastDonationDate" Text="Last Donation Date"></asp:Label>
                    <div class="col-md-9">
                        <asp:TextBox CssClass="form-control form-control-sm col-md-9" ID="txtLastDonationDate" runat="server"></asp:TextBox>&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Date is Required" ForeColor="Red" ControlToValidate="txtLastDonationDate" Display="Dynamic" ValidationGroup="Insert">
                            </asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group row">
                    <asp:Label ID="Label10" CssClass="col-form-label col-md-3" runat="server" AssociatedControlID="fuDonorImage" Text="Image"></asp:Label>
                    <div class="col-md-9">
                        <asp:FileUpload ID="fuDonorImage" runat="server" CssClass="form-control form-control-sm col-md-9" />
                    </div>
                </div>
                <div class="offset-3">
                    &nbsp;&nbsp;<a class="btn btn-info" runat="server" href="~/Donor/Donors.aspx"><i class="fa fa-arrow-circle-o-left"></i> Back to List</a>
                    <asp:Button ID="btnsubmit" ValidationGroup="Insert" runat="server" Text="Submit" CssClass="btn btn-success" OnClick="btnsubmit_Click" />
                </div>
            </div>
        </div>
    </div>
    <asp:SqlDataSource ID="dsDonors" runat="server" ConnectionString="<%$ ConnectionStrings:ProcheshtaDBCon %>" DeleteCommand="DELETE FROM [Donors] WHERE [donorId] = @donorId" InsertCommand="INSERT INTO [Donors] ([donorName], [age], [weight], [gender], [bloodGroup], [contactNo], [email], [donorAddress], [lastDonationDate], [donorImage]) VALUES (@donorName, @age, @weight, @gender, @bloodGroup, @contactNo, @email, @donorAddress, @lastDonationDate, @donorImage)" SelectCommand="SELECT * FROM [Donors]" UpdateCommand="UPDATE [Donors] SET [donorName] = @donorName, [age] = @age, [weight] = @weight, [gender] = @gender, [bloodGroup] = @bloodGroup, [contactNo] = @contactNo, [email] = @email, [donorAddress] = @donorAddress, [lastDonationDate] = @lastDonationDate, [donorImage] = @donorImage WHERE [donorId] = @donorId">
        <InsertParameters>
            <asp:Parameter Name="donorName" Type="String" />
            <asp:Parameter Name="age" Type="Int32" />
            <asp:Parameter Name="weight" Type="Int32" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="bloodGroup" Type="String" />
            <asp:Parameter Name="contactNo" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="donorAddress" Type="String" />
            <asp:Parameter Name="lastDonationDate" Type="DateTime" />
            <asp:Parameter Name="donorImage" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
    <script src="../Scripts/bootstrap-datepicker.js"></script>
    <script>
        $(document).ready(() => {
            $("input[name$='txtLastDonationDate']").datepicker({
                format: "yyyy-mm-dd"
            });
        });
    </script>
</asp:Content>

