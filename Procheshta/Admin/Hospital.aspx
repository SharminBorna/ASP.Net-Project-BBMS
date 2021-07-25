<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Hospital.aspx.cs" Inherits="Procheshta.Admin.Hospital" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Content/font-awesome.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-12">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <h2>Hospital List</h2>
                    <hr />
                    <div class="text-right">
                        <a runat="server" class="btn btn-info btn-sm" href="~/Admin/Add_Hospital.aspx"><i class="fa fa-plus"></i> Add New</a>
                    </div>
                    <asp:GridView ID="GridView1" CssClass="table table-bordered table-sm" Width="100%" runat="server" AutoGenerateColumns="False" AllowSorting="True" DataSourceID="odsHospital" DataKeyNames="hospitalId" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:TemplateField HeaderText="Id" InsertVisible="False" SortExpression="hospitalId">
                                <EditItemTemplate>
                                    <asp:Label ID="Label1" CssClass="form-control" runat="server" Text='<%# Eval("hospitalId") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("hospitalId") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Hospital Name" SortExpression="hospitalName">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" Text='<%# Bind("hospitalName") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("hospitalName") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Address" SortExpression="hospitalAddress">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" Text='<%# Bind("hospitalAddress") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("hospitalAddress") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Contact No" SortExpression="contactNo">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" Text='<%# Bind("contactNo") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("contactNo") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField ShowHeader="False">
                                <EditItemTemplate>
                                    <asp:LinkButton ID="btnUpdate" CssClass="btn btn-primary btn-sm" runat="server" CausesValidation="True" CommandName="Update"><i class="fa fa-floppy-o"></i> Update</asp:LinkButton>
                                    &nbsp;
                                    <asp:LinkButton ID="btnCancel" CssClass="btn btn-warning btn-sm" runat="server" CausesValidation="False" CommandName="Cancel"><i class="fa fa-backward"></i> Cancel</asp:LinkButton>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:LinkButton ID="btnEdit" CssClass="btn btn-info btn-sm" runat="server" CausesValidation="False" CommandName="Edit"><i class="fa fa-pencil-alt"></i> Edit</asp:LinkButton>
                                    &nbsp;
                                    <asp:LinkButton ID="btnDelete" CssClass="btn btn-danger btn-sm" runat="server" CausesValidation="False" CommandName="Delete"><i class="fa fa-trash"></i> Delete</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>

                    <asp:ObjectDataSource ID="odsHospital" DeleteMethod="Delete" InsertMethod="Insert" UpdateMethod="Edit" SelectMethod="GetAll" DataObjectTypeName="Procheshta.Models.Hospital" TypeName="Procheshta.Dal.DataManagerHospital" runat="server"></asp:ObjectDataSource>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>


