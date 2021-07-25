<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RequestBlood.aspx.cs" Inherits="Procheshta.Patient.RequestBlood" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Content/bootstrap-datepicker.standalone.css" rel="stylesheet" />
    <link href="../Content/font-awesome.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-12">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <h2>Request Form</h2>
                    <hr />
                     <div runat="server" class="alert alert-warning alert-dismissible fade show" id="alert" role="alert" visible="false">
                        <button type="button" class="close" data-dismiss="alert" aria-label="close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <p runat="server" id="msg"></p>
                    </div>
                    <div class="form-group row">
                        <asp:Label ID="Label1" CssClass="col-form-label col-md-2" AssociatedControlID="ddlPatient" runat="server" Text="Patient Name"></asp:Label>
                        <div class="col-md-9">
                            <asp:DropDownList ID="ddlPatient" CssClass="form-control form-control-sm col-md-4" runat="server" DataTextField="patientName" DataSourceID="dsPatient" DataValueField="patientID" AppendDataBoundItems="True">
                                <asp:ListItem Value="" Selected="True">---Select One---</asp:ListItem>
                            </asp:DropDownList>
                            &nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Patient Name is Required" ForeColor="Red" ControlToValidate="ddlPatient" Display="Dynamic" ValidationGroup="Insert"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group row">
                        <asp:Label ID="Label5" CssClass="col-form-label col-md-2" runat="server" AssociatedControlID="ddlBloodGroup" Text="Blood Group"></asp:Label>
                        <div class="col-md-9">
                            <asp:DropDownList ID="ddlBloodGroup" CssClass="form-control form-control-sm col-md-4" runat="server" DataTextField="bloodGroup" DataSourceID="dsGroup" DataValueField="bloodGroupId" AppendDataBoundItems="True">
                                <asp:ListItem Value="" Selected="True">---Select One---</asp:ListItem>                                
                            </asp:DropDownList>
                            &nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Blood Group is Required" ForeColor="Red" ControlToValidate="ddlBloodGroup" Display="Dynamic" ValidationGroup="Insert"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group row">
                        <asp:Label ID="Label2" CssClass="col-form-label col-md-2" runat="server" AssociatedControlID="txtDate" Text="Case Date"></asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox CssClass="form-control form-control-sm col-md-4" ID="txtDate" runat="server"></asp:TextBox>&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Date is Required" ForeColor="Red" ControlToValidate="txtDate" Display="Dynamic" ValidationGroup="Insert"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group row">
                        <asp:Label ID="Label3" CssClass="col-form-label col-md-2" runat="server" AssociatedControlID="txtReason" Text="Reason"></asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox CssClass="form-control form-control-sm col-md-4" ID="txtReason" runat="server"></asp:TextBox>&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Reason is Required" ForeColor="Red" ControlToValidate="txtReason" Display="Dynamic" ValidationGroup="Insert"></asp:RequiredFieldValidator>
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
                        <asp:Label ID="Label8" CssClass="col-form-label col-md-2" runat="server" AssociatedControlID="ddlHospital" Text="Hospital"></asp:Label>
                        <div class="col-md-9">
                            <asp:DropDownList ID="ddlHospital" CssClass="form-control form-control-sm col-md-4" runat="server" DataTextField="hospitalName" DataSourceID="dsHospital" DataValueField="hospitalId" AppendDataBoundItems="True">
                                <asp:ListItem Value="" Selected="True">---Select One---</asp:ListItem>                                
                            </asp:DropDownList>
                            &nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Hospital Name is Required" ForeColor="Red" ControlToValidate="ddlHospital" Display="Dynamic" ValidationGroup="Insert"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <asp:SqlDataSource ID="dsRequest" runat="server" ConnectionString="<%$ ConnectionStrings:ProcheshtaDBCon %>" DeleteCommand="DELETE FROM [BloodRequest] WHERE [requestID] = @requestID" InsertCommand="INSERT INTO [BloodRequest] ([patientID], [bloodGroupId], [caseDate], [reasonForBlood], [contactNo], [hospitalID]) VALUES (@patientID, @bloodGroupId, @caseDate, @reasonForBlood, @contactNo, @hospitalID)" SelectCommand="SELECT * FROM [BloodRequest]" UpdateCommand="UPDATE [BloodRequest] SET [patientID] = @patientID, [bloodGroupId] = @bloodGroupId, [caseDate] = @caseDate, [reasonForBlood] = @reasonForBlood, [contactNo] = @contactNo, [hospitalID] = @hospitalID WHERE [requestID] = @requestID">                        
                        <InsertParameters>
                            <asp:Parameter Name="patientID" Type="Int32" />
                            <asp:Parameter Name="bloodGroupId" Type="Int32" />
                            <asp:Parameter Name="caseDate" Type="DateTime" />
                            <asp:Parameter Name="reasonForBlood" Type="String" />
                            <asp:Parameter Name="contactNo" Type="String" />
                            <asp:Parameter Name="hospitalID" Type="Int32" />
                        </InsertParameters>                      
                    </asp:SqlDataSource> 
                    <asp:SqlDataSource ID="dsPatient" runat="server" ConnectionString="<%$ ConnectionStrings:ProcheshtaDBCon %>" SelectCommand="SELECT * FROM [Patients]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="dsGroup" runat="server" ConnectionString="<%$ ConnectionStrings:ProcheshtaDBCon %>" SelectCommand="SELECT * FROM [BloodGroups]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="dsHospital" runat="server" ConnectionString="<%$ ConnectionStrings:ProcheshtaDBCon %>" SelectCommand="SELECT * FROM [Hospital]"></asp:SqlDataSource>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>
    <div class="offset-2">
        <a class="btn btn-info" runat="server" href="~/Patient/Patients.aspx"><i class="fa fa-arrow-circle-o-left"></i> Back to List</a>
        <asp:Button ID="btnsubmit" ValidationGroup="Insert" runat="server" Text="Submit" CssClass="btn btn-success" OnClick="btnsubmit_Click"/>
    </div>
    <br />
    <div class="form-group row">
        <div class="col-md-2 text-right pr-1 pt-2">
            <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
                <ProgressTemplate>
                    <i class="fa fa-spin fa-spinner fa-2x"></i>
                </ProgressTemplate>
            </asp:UpdateProgress>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
    <script src="../Scripts/bootstrap-datepicker.js"></script>
    <script>
        $(document).ready(() => {
            $("input[name$='txtDate']").datepicker({
                format: "yyyy-mm-dd"
            }); 
        });        
    </script>
</asp:Content>
