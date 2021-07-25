<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Donors.aspx.cs" Inherits="Procheshta.Donor.Donors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Content/bootstrap-datepicker.standalone.css" rel="stylesheet" />
    <link href="../Content/font-awesome.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-12">
            <h2>Donor Details</h2>
            <hr />
            <div class="text-right mb-2">
                <a runat="server" class="btn btn-info btn-sm" href="~/Donor/AddDonors.aspx"><i class="fa fa-plus"></i> Add New</a>
            </div>
            <asp:DetailsView CssClass="table table-bordered table-hover table-striped table-sm" AutoGenerateRows="False" DataKeyNames="donorId" ID="DetailsView1" runat="server" AllowPaging="True" DataSourceID="dsDonors" OnItemInserting="DetailsView1_ItemInserting" OnItemUpdating="DetailsView1_ItemUpdating">
                <Fields>
                    <asp:TemplateField HeaderText="Donor Id" InsertVisible="False" SortExpression="donorId">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("donorId") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("donorId") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Donor Name" SortExpression="donorName">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" CssClass="form-control form-control-sm" runat="server" Text='<%# Bind("donorName") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox1" CssClass="form-control form-control-sm" runat="server" Text='<%# Bind("donorName") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("donorName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Age ( years )" SortExpression="age">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtAge" CssClass="form-control form-control-sm" runat="server" Text='<%# Bind("age") %>'></asp:TextBox>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Age must be Greater than 20" ControlToValidate="txtAge" Display="Dynamic" ForeColor="Red" MaximumValue="55" MinimumValue="20" ValidationGroup="Update"></asp:RangeValidator>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox2" CssClass="form-control form-control-sm" runat="server" Text='<%# Bind("age") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("age") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Weight ( kg )" SortExpression="weight">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtWeight" CssClass="form-control form-control-sm" runat="server" Text='<%# Bind("weight") %>'></asp:TextBox>
                            <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="Weight must be Greater than 45kg" ControlToValidate="txtWeight" Display="Dynamic" ForeColor="Red" MaximumValue="80" MinimumValue="45" ValidationGroup="Update"></asp:RangeValidator>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox3" CssClass="form-control form-control-sm" runat="server" Text='<%# Bind("weight") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("weight") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Gender" SortExpression="gender">
                        <EditItemTemplate>
                            <asp:DropDownList ID="ddlUpdateGender" CssClass="form-control form-control-sm" runat="server" DataSourceID="dsGender" DataTextField="gender" DataValueField="gender" SelectedValue='<%# Bind("gender") %>' AppendDataBoundItems="true">
                                <asp:ListItem Value="" Selected="True">---Select Gender---</asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox4" CssClass="form-control form-control-sm" runat="server" Text='<%# Bind("gender") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("gender") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Blood Group" SortExpression="bloodGroup">
                        <EditItemTemplate>
                            <asp:DropDownList ID="ddlUpdateBG" CssClass="form-control form-control-sm" runat="server" DataSourceID="dsBloodGroup" DataTextField="bloodGroup" DataValueField="bloodGroup" SelectedValue='<%# Bind("bloodGroup") %>' AppendDataBoundItems="true">
                                <asp:ListItem Value="" Selected="True">---Select Gender---</asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox5" CssClass="form-control form-control-sm" runat="server" Text='<%# Bind("bloodGroup") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label7" runat="server" Text='<%# Bind("bloodGroup") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Contact No" SortExpression="contactNo">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox6" CssClass="form-control form-control-sm" runat="server" Text='<%# Bind("contactNo") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox6" CssClass="form-control form-control-sm" runat="server" Text='<%# Bind("contactNo") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label8" runat="server" Text='<%# Bind("contactNo") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email" SortExpression="email">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtEmail" CssClass="form-control form-control-sm" runat="server" Text='<%# Bind("email") %>'></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Email Format" ForeColor="Red" ControlToValidate="txtEmail" Display="Dynamic" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="Update"></asp:RegularExpressionValidator>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox7" CssClass="form-control form-control-sm" runat="server" Text='<%# Bind("email") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label9" runat="server" Text='<%# Bind("email") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Address" SortExpression="donorAddress">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox8" CssClass="form-control form-control-sm" runat="server" Text='<%# Bind("donorAddress") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox8" CssClass="form-control form-control-sm" runat="server" Text='<%# Bind("donorAddress") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label10" runat="server" Text='<%# Bind("donorAddress") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Last Donation Date" SortExpression="lastDonationDate">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtUpdate" runat="server" CssClass="form-control form-control-sm" Text='<%# Bind("lastDonationDate","{0:yyyy-MM-dd}") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="txtInsert" CssClass="form-control form-control-sm" runat="server" Text='<%# Bind("lastDonationDate","{0:yyyy-MM-dd}") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("lastDonationDate","{0:yyyy-MM-dd}") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Image" SortExpression="donorImage">
                        <EditItemTemplate>
                            <img width="40" height="40" id="donorImgPreview" class="donorImgPreview" src='<%# "../Admin/Images/" + Eval("donorImage") %>' />
                            <br />
                            Change Picture:
                                    <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Bind("donorImage") %>' />
                            <asp:FileUpload ID="fuPictureUpdate" runat="server" onchange="document.getElementById('donorImgPreview').src = window.URL.createObjectURL(this.files[0])" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Bind("donorImage") %>' />
                            <asp:FileUpload ID="fuPicture" runat="server" />
                        </InsertItemTemplate>
                        <ItemTemplate>                        
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Bind("donorImage","~/Admin/Images/{0}") %>' Height="40" Width="40" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:LinkButton ID="btnUpdate" ValidationGroup="Update" CssClass="btn btn-primary btn-sm" runat="server" CausesValidation="True" CommandName="Update"><i class="fa fa-floppy-o"></i> Update</asp:LinkButton>
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
            <asp:SqlDataSource ID="dsDonors" runat="server" ConnectionString="<%$ ConnectionStrings:ProcheshtaDBCon %>" DeleteCommand="DELETE FROM [Donors] WHERE [donorId] = @donorId" InsertCommand="INSERT INTO [Donors] ([donorName], [age], [weight], [gender], [bloodGroup], [contactNo], [email], [donorAddress], [lastDonationDate], [donorImage]) VALUES (@donorName, @age, @weight, @gender, @bloodGroup, @contactNo, @email, @donorAddress, @lastDonationDate, @donorImage)" SelectCommand="SELECT * FROM [Donors]"
                UpdateCommand="UPDATE [Donors] SET [donorName] = @donorName, [age] = @age, [weight] = @weight, [gender] = @gender, [bloodGroup] = @bloodGroup, [contactNo] = @contactNo, [email] = @email, [donorAddress] = @donorAddress, [lastDonationDate] = @lastDonationDate, [donorImage] = @donorImage WHERE [donorId] = @donorId">
                <DeleteParameters>
                    <asp:Parameter Name="donorId" Type="Int32" />
                </DeleteParameters>
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
                <UpdateParameters>
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
                    <asp:Parameter Name="donorId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="dsBloodGroup" runat="server" ConnectionString="<%$ ConnectionStrings:ProcheshtaDBCon %>" SelectCommand="SELECT DISTINCT [bloodGroup] FROM [Donors]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="dsGender" runat="server" ConnectionString="<%$ ConnectionStrings:ProcheshtaDBCon %>" SelectCommand="SELECT DISTINCT [gender] FROM [Donors]"></asp:SqlDataSource>
        </div>
    </div>
    <br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
    <script src="../Scripts/bootstrap-datepicker.js"></script>
    <script>
        $(document).ready(() => {
            $("input[name$='txtUpdate']").datepicker({ format: "yyyy-mm-dd" });
            $("input[name$='txtInsert']").datepicker({ format: "yyyy-mm-dd" });
            $("input[name$='btnDelete']").click((evt) => {
                if (!confirm("Are you sure to delete?")) {
                    evt.preventDefault();
                }
            });
        });
        function confirmDelete() {
            if (!confirm("Are you sure to delete?")) {
                return false;
            }
            return true;
        }
    </script>
</asp:Content>
