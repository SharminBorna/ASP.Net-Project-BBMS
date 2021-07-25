<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Patients.aspx.cs" Inherits="Procheshta.Patient.Patients" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Content/font-awesome.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-12">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <h2>Patient Details</h2>
                    <hr />
                    <div class="text-right" style="margin-bottom:5px;">
                        <a runat="server" class="btn btn-success btn-sm" href="~/Patient/RequestBlood.aspx"><i class="fa fa-ambulance"></i> Request For Blood</a>
                        <a runat="server" class="btn btn-info btn-sm" href="~/Patient/AddPatients.aspx"><i class="fa fa-plus"></i> Add New</a>
                    </div>
                    <asp:DetailsView ID="DetailsView1" CssClass="table table-bordered table-hover table-sm table-active w-100" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="patientID" DataSourceID="dsPatient">
                        <Fields>
                            <asp:TemplateField HeaderText="Patient ID" InsertVisible="False" SortExpression="patientID">
                                <EditItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("patientID") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("patientID") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Patient Name" SortExpression="patientName">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox6" CssClass="form-control form-control-sm" runat="server" Text='<%# Bind("patientName") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("patientName") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Age" SortExpression="age">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox5" CssClass="form-control form-control-sm" runat="server" Text='<%# Bind("age") %>'></asp:TextBox>
                                </EditItemTemplate>                               
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("age") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Gender" SortExpression="gender">
                                <EditItemTemplate>
                                    <asp:DropDownList ID="ddlGender" CssClass="form-control w-50 form-control-sm" runat="server" DataSourceID="dsGender" DataTextField="gender" DataValueField="gender" SelectedValue='<%# Bind("gender") %>' AppendDataBoundItems="true">
                                        <asp:ListItem Value="" Selected="True">---Select One---</asp:ListItem>
                                    </asp:DropDownList>
                                </EditItemTemplate>                            
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("gender") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Blood Group" SortExpression="bloodGroup">
                                <EditItemTemplate>
                                    <asp:DropDownList ID="ddlBloodGroup" CssClass="form-control w-50 form-control-sm" runat="server" DataSourceID="dsBloodGroup" DataTextField="bloodGroup" DataValueField="bloodGroup" SelectedValue='<%# Bind("bloodGroup") %>' AppendDataBoundItems="true">
                                        <asp:ListItem Value="" Selected="True">---Select One---</asp:ListItem>
                                    </asp:DropDownList>
                                </EditItemTemplate>                               
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("bloodGroup") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Contact No" SortExpression="contactNo">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" CssClass="form-control form-control-sm" runat="server" Text='<%# Bind("contactNo") %>'></asp:TextBox>
                                </EditItemTemplate>                               
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("contactNo") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Address" SortExpression="Address">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" CssClass="form-control form-control-sm" runat="server" Text='<%# Bind("Address") %>'></asp:TextBox>
                                </EditItemTemplate>                              
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Address") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField ShowHeader="False">
                                <EditItemTemplate>
                                    <asp:LinkButton ID="btnUpdate" CssClass="btn btn-primary btn-sm" runat="server" CausesValidation="True" CommandName="Update"><i class="fa fa-floppy-o"></i> Update</asp:LinkButton>
                                    &nbsp;
                                    <asp:LinkButton ID="btnCancel" CssClass="btn btn-warning btn-sm" runat="server" CausesValidation="False" CommandName="Cancel"><i class="fa fa-backward"></i> Cancel</asp:LinkButton>
                                </EditItemTemplate>
                                 <ItemTemplate>
                                    <asp:LinkButton ID="btnEdit" CssClass="btn btn-info btn-sm" runat="server" CausesValidation="False" CommandName="Edit"><i class="fa fa-pencil"></i> Edit</asp:LinkButton>                                   
                                    &nbsp;
                                    <asp:LinkButton ID="btnDelete" CssClass="btn btn-danger btn-sm" runat="server" CausesValidation="False" CommandName="Delete"><i class="fa fa-trash"></i> Delete</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Fields>
                    </asp:DetailsView>                  
                    <asp:SqlDataSource ID="dsPatient" runat="server" ConnectionString="<%$ ConnectionStrings:ProcheshtaDBCon %>" DeleteCommand="DELETE FROM [Patients] WHERE [patientID] = @patientID" InsertCommand="INSERT INTO [Patients] ([patientName], [age], [gender], [bloodGroup], [contactNo], [Address]) VALUES (@patientName, @age, @gender, @bloodGroup, @contactNo, @Address)" SelectCommand="SELECT * FROM [Patients]" UpdateCommand="UPDATE [Patients] SET [patientName] = @patientName, [age] = @age, [gender] = @gender, [bloodGroup] = @bloodGroup, [contactNo] = @contactNo, [Address] = @Address WHERE [patientID] = @patientID">
                        <DeleteParameters>
                            <asp:Parameter Name="patientID" Type="Int32" />
                        </DeleteParameters>                        
                        <UpdateParameters>
                            <asp:Parameter Name="patientName" Type="String" />
                            <asp:Parameter Name="age" Type="Int32" />
                            <asp:Parameter Name="gender" Type="String" />
                            <asp:Parameter Name="bloodGroup" Type="String" />
                            <asp:Parameter Name="contactNo" Type="String" />
                            <asp:Parameter Name="Address" Type="String" />
                            <asp:Parameter Name="patientID" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="dsBloodGroup" runat="server" ConnectionString="<%$ ConnectionStrings:ProcheshtaDBCon %>" SelectCommand="SELECT DISTINCT [bloodGroup] FROM [Patients]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="dsGender" runat="server" ConnectionString="<%$ ConnectionStrings:ProcheshtaDBCon %>" SelectCommand="SELECT DISTINCT [gender] FROM [Patients]"></asp:SqlDataSource>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>

