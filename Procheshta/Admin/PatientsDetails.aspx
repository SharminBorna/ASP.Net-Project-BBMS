<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="PatientsDetails.aspx.cs" Inherits="Procheshta.Admin.PatientsDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Content/font-awesome.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-12">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <h2>Patient List</h2>
                    <hr />
                    <div class="text-right mb-2">
                        <a runat="server" class="btn btn-info btn-sm" href="~/Admin/AddPatients.aspx"><i class="fa fa-plus"></i> Add New</a>
                    </div>
                    <asp:GridView ID="GridView1" Width="100%" runat="server" AutoGenerateColumns="False" DataKeyNames="patientID" DataSourceID="DsPatients" AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:TemplateField HeaderText="ID" InsertVisible="False" SortExpression="patientID">
                                <EditItemTemplate>
                                    <asp:Label ID="Label1" CssClass="form-control" runat="server" Text='<%# Eval("patientID") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("patientID") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Name" SortExpression="patientName">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server" Text='<%# Bind("patientName") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("patientName") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Age" SortExpression="age">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" Text='<%# Bind("age") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("age") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Gender" SortExpression="gender">
                                <EditItemTemplate>
                                    <asp:DropDownList ID="ddlGender" CssClass="form-control" runat="server" DataSourceID="dsGender" DataTextField="gender" DataValueField="gender" SelectedValue='<%# Bind("gender") %>' AppendDataBoundItems="true">
                                        <asp:ListItem Value="" Selected="True">---Select One---</asp:ListItem>
                                    </asp:DropDownList>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("gender") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Blood Group" SortExpression="bloodGroup">
                                <EditItemTemplate>
                                    <asp:DropDownList ID="ddlBloodGroup" CssClass="form-control" runat="server" DataSourceID="dsBloodGroup" DataTextField="bloodGroup" DataValueField="bloodGroup" SelectedValue='<%# Bind("bloodGroup") %>' AppendDataBoundItems="true">
                                        <asp:ListItem Value="" Selected="True">---Select One---</asp:ListItem>
                                    </asp:DropDownList>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("bloodGroup") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Contact" SortExpression="contactNo">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" Text='<%# Bind("contactNo") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("contactNo") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Address" SortExpression="Address">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" Text='<%# Bind("Address") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Address") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField ShowHeader="False">
                                <EditItemTemplate>
                                    <asp:LinkButton ID="btnUpdate" CssClass="btn btn-primary btn-sm" runat="server" CausesValidation="True" CommandName="Update"><i class="fa fa-floppy-o"></i></asp:LinkButton>
                                    &nbsp;
                                    <asp:LinkButton ID="btnCancel" CssClass="btn btn-warning btn-sm" runat="server" CausesValidation="False" CommandName="Cancel"><i class="fa fa-backward"></i></asp:LinkButton>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:LinkButton ID="btnEdit" CssClass="btn btn-info btn-sm" runat="server" CausesValidation="False" CommandName="Edit"><i class="fa fa-pencil-square-o"></i> Edit</asp:LinkButton>    
                                    &nbsp;
                                    <asp:LinkButton ID="btnDelete" CssClass="btn btn-danger btn-sm" runat="server" CausesValidation="False" CommandName="Delete"><i class="fa fa-trash"></i> Delete</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                        <SortedDescendingHeaderStyle BackColor="#15524A" />
                    </asp:GridView>

                    <asp:SqlDataSource ID="DsPatients" runat="server" ConnectionString="<%$ ConnectionStrings:ProcheshtaDBCon %>" DeleteCommand="DELETE FROM [Patients] WHERE [patientID] = @patientID" InsertCommand="INSERT INTO [Patients] ([patientName], [age], [gender], [bloodGroup], [contactNo], [Address]) VALUES (@patientName, @age, @gender, @bloodGroup, @contactNo, @Address)" SelectCommand="SELECT * FROM [Patients]" UpdateCommand="UPDATE [Patients] SET [patientName] = @patientName, [age] = @age, [gender] = @gender, [bloodGroup] = @bloodGroup, [contactNo] = @contactNo, [Address] = @Address WHERE [patientID] = @patientID">
                        <DeleteParameters>
                            <asp:Parameter Name="patientID" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="patientName" Type="String" />
                            <asp:Parameter Name="age" Type="Int32" />
                            <asp:Parameter Name="gender" Type="String" />
                            <asp:Parameter Name="bloodGroup" Type="String" />
                            <asp:Parameter Name="contactNo" Type="String" />
                            <asp:Parameter Name="Address" Type="String" />
                        </InsertParameters>
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
