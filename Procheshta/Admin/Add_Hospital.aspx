<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Add_Hospital.aspx.cs" Inherits="Procheshta.Admin.Add_Hospital" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Content/font-awesome.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-12">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <h2>Add New Hospital</h2>
                    <hr />
                    <asp:DetailsView ID="DetailsView1" CssClass="table table-bordered" Width="100%" runat="server" AutoGenerateRows="False" DataKeyNames="hospitalId" DataSourceID="OdsHospital" DefaultMode="Insert">
                        <Fields>
                            <asp:BoundField DataField="hospitalId" HeaderText="Hospital Id" InsertVisible="False" ReadOnly="True" SortExpression="hospitalId" />
                            <asp:TemplateField HeaderText="Hospital Name" SortExpression="hospitalName">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("hospitalName") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox3" CssClass="form-control" Width="100%" runat="server" Text='<%# Bind("hospitalName") %>'></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Hospital name is required" ForeColor="Red" ControlToValidate="TextBox3" Display="Dynamic" ValidationGroup="Insert">
                                    </asp:RequiredFieldValidator>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("hospitalName") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Hospital Address" SortExpression="hospitalAddress">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("hospitalAddress") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox2" CssClass="form-control" Width="100%" runat="server" Text='<%# Bind("hospitalAddress") %>'></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Hospital address is required" ForeColor="Red" ControlToValidate="TextBox2" Display="Dynamic" ValidationGroup="Insert">
                                    </asp:RequiredFieldValidator>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("hospitalAddress") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Contact No" SortExpression="contactNo">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("contactNo") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox1" CssClass="form-control" Width="100%" runat="server" Text='<%# Bind("contactNo") %>'></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Contact No is required" ForeColor="Red" ControlToValidate="TextBox1" Display="Dynamic" ValidationGroup="Insert">
                                    </asp:RequiredFieldValidator>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("contactNo") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField ShowHeader="False">
                                <InsertItemTemplate>
                                    <asp:LinkButton OnClick="btnInsert_Click" ID="btnInsert" ValidationGroup="Insert" CssClass="btn btn-success btn-sm" runat="server" CausesValidation="True" CommandName="Insert"><i class="fa fa-save"></i> Insert</asp:LinkButton>
                                    &nbsp;
                                    <asp:LinkButton ID="btnCancel" CssClass="btn btn-warning btn-sm" runat="server" CausesValidation="False" CommandName="Cancel"><i class="fa fa-backward"></i> Clear</asp:LinkButton>
                                    <span runat="server" id="showMsg"></span>
                                    <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1" DisplayAfter="1000">
                                        <ProgressTemplate>
                                            <br />
                                            <span class="text-success">Data Saved successfully!</span>
                                        </ProgressTemplate>
                                    </asp:UpdateProgress>
                                </InsertItemTemplate>                             
                            </asp:TemplateField>
                        </Fields>
                    </asp:DetailsView>
                    <asp:ObjectDataSource ID="OdsHospital" DataObjectTypeName="Procheshta.Models.Hospital" TypeName="Procheshta.Dal.DataManagerHospital" DeleteMethod="Delete" InsertMethod="Insert" SelectMethod="GetAll" UpdateMethod="Edit" runat="server"></asp:ObjectDataSource>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>
    <div class="">
        <a class="btn btn-info" runat="server" href="~/Admin/Hospital.aspx"><i class="fa fa-arrow-alt-circle-left"></i> Back to List</a>
    </div>
    <br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>
