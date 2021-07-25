<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="DonorDetails.aspx.cs" Inherits="Procheshta.Admin.DonorDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Content/bootstrap-datepicker.standalone.css" rel="stylesheet" />
    <link href="../Content/font-awesome.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-12">
            <%--<asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>--%>
                    <h2>Donor List</h2>
                    <hr />
                    <div class="text-right mb-2">
                        <a runat="server" class="btn btn-success btn-sm" href="~/Admin/SendMail.aspx"><i class="fa fa-mail-bulk"></i> Send Mail</a>
                        <a runat="server" class="btn btn-info btn-sm" href="~/Admin/AddDonors.aspx"><i class="fa fa-plus"></i> Add New</a>
                    </div>
                    <asp:ListView ID="ListView1" runat="server" DataSourceID="dsDonors" DataKeyNames="donorId" OnItemCommand="ListView1_ItemCommand">
                        <LayoutTemplate>
                            <table runat="server" class="table" border="1" style="background-color: #48548d; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px;">
                                <tr runat="server" class="thead-dark" style="background-color: #DCDCDC; color: #000000;">
                                    <td runat="server">
                                        <table id="itemPlaceholderContainer" runat="server" class="table table-bordered">
                                            <tr runat="server" style="">
                                                <th runat="server">Id</th>
                                                <th runat="server">Name</th>
                                                <th runat="server">Age</th>
                                                <th runat="server">Weight</th>
                                                <th runat="server">Gender</th>
                                                <th runat="server">Group</th>
                                                <th runat="server">Contact</th>
                                                <th runat="server">Email</th>
                                                <th runat="server">Address</th>
                                                <th runat="server">Last Donation</th>
                                                <th runat="server">Image</th>
                                                <th runat="server">Action</th>
                                            </tr>
                                            <tr id="itemPlaceholder" runat="server">
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr runat="server">
                                    <td runat="server" style="text-align: center; background-color: #CCCCCC; color: #000000">
                                        <asp:DataPager ID="DataPager1" runat="server">
                                            <Fields>
                                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                            </Fields>
                                        </asp:DataPager>
                                    </td>
                                </tr>
                            </table>
                        </LayoutTemplate>
                        <AlternatingItemTemplate>
                            <tr style="background-color: #FFF8DC;">
                                <td>
                                    <asp:Label ID="donorIdLabel" runat="server" Text='<%# Eval("donorId") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="donorNameLabel" runat="server" Text='<%# Eval("donorName") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="ageLabel" runat="server" Text='<%# Eval("age") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="weightLabel" runat="server" Text='<%# Eval("weight") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="genderLabel" runat="server" Text='<%# Eval("gender") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="bloodGroupLabel" runat="server" Text='<%# Eval("bloodGroup") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="contactNoLabel" runat="server" Text='<%# Eval("contactNo") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="donorAddressLabel" runat="server" Text='<%# Eval("donorAddress") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="lastDonationDateLabel" runat="server" Text='<%# Eval("lastDonationDate","{0:yyy-MM-dd}") %>' />
                                </td>
                                <td>
                                    <asp:Image ID="donorImage" runat="server" ImageUrl='<%# "/Admin/Images/" + Eval("donorImage") %>' CssClass="img-thumbnail" Width="40px" Height="40px" />
                                </td>
                                <td>
                                    <asp:LinkButton runat="server" CssClass="btn btn-sm btn-info" CommandName="Edit" ID="LinkButton1">
                                        <i class='fa fa-pencil-square-o'></i>
                                    </asp:LinkButton>
                                    <asp:LinkButton runat="server" CssClass="btn btn-sm btn-danger" CommandName="Delete" ID="LinkButton2">
                                        <i class='fa fa-trash'></i>
                                    </asp:LinkButton>
                                </td>
                            </tr>
                        </AlternatingItemTemplate>
                        <EditItemTemplate>
                            <tr style="background-color: #CCCCCC; color: #FFFFFF;">
                                <td>
                                    <asp:Label ID="donorIdLabel1" CssClass="form-control" runat="server" Text='<%# Eval("donorId") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="donorNameTextBox" CssClass="form-control" runat="server" Text='<%# Bind("donorName") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="ageTextBox" CssClass="form-control" runat="server" Text='<%# Bind("age") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="weightTextBox" CssClass="form-control" runat="server" Text='<%# Bind("weight") %>' />
                                </td>
                                <td>
                                    <asp:DropDownList ID="ddlGender" CssClass="form-control" runat="server" DataSourceID="dsGender" DataTextField="gender" DataValueField="gender" SelectedValue='<%# Bind("gender") %>' AppendDataBoundItems="true">
                                        <asp:ListItem Value="" Selected="True">---Select One---</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:DropDownList ID="ddlBloodGroup" CssClass="form-control" runat="server" DataSourceID="dsBloodGroup" DataTextField="bloodGroup" DataValueField="bloodGroup" SelectedValue='<%# Bind("bloodGroup") %>' AppendDataBoundItems="true">
                                        <asp:ListItem Value="" Selected="True">---Select One---</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:TextBox ID="contactNoTextBox" CssClass="form-control" runat="server" Text='<%# Bind("contactNo") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="emailTextBox" CssClass="form-control" runat="server" Text='<%# Bind("email") %>' />
                                </td>                               
                                <td>
                                    <asp:TextBox ID="donorAddressTextBox" CssClass="form-control" runat="server" Text='<%# Bind("donorAddress") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="txtLastDonationDate" CssClass="form-control" runat="server" Text='<%# Bind("lastDonationDate","{0:yyy-MM-dd}") %>' />
                                </td>
                                <td style="width: 200px">
                                    <asp:FileUpload runat="server" ID="fuImage" CssClass="fuImage form-control" />
                                    <asp:Image ID="image1" runat="server" ImageUrl='<%# "/Admin/Images/" + Eval("donorImage") %>' CssClass="img-thumbnail imgEdit" Width="40px" Height="40px" />
                                    <asp:TextBox ID="image" CssClass="image d-none" runat="server" Text='<%# Bind("donorImage") %>'></asp:TextBox>
                                </td>
                                <td>
                                    <asp:LinkButton ID="LinkButton3" CssClass="btn btn-sm btn-success" runat="server" CommandName="Update" Text="Update">
                                        <i class="fa fa-save"></i>
                                    </asp:LinkButton>
                                    <asp:LinkButton ID="LinkButton4" CssClass="btn btn-sm btn-secondary" runat="server" CommandName="Cancel" Text="Cancel">
                                        <i class="fa fa-backward"></i>
                                    </asp:LinkButton>
                                </td>
                            </tr>
                        </EditItemTemplate>
                        <EmptyDataTemplate>
                            <table class="table" runat="server" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px;">
                                <tr>
                                    <td>No data was returned.</td>
                                </tr>
                            </table>
                        </EmptyDataTemplate>
                        <InsertItemTemplate>
                            <tr style="">
                                <td>
                                    <asp:TextBox ID="donorNameTextBox" runat="server" Text='<%# Bind("donorName") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="ageTextBox" runat="server" Text='<%# Bind("age") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="weightTextBox" runat="server" Text='<%# Bind("weight") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="genderTextBox" runat="server" Text='<%# Bind("gender") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="bloodGroupTextBox" runat="server" Text='<%# Bind("bloodGroup") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="contactNoTextBox" runat="server" Text='<%# Bind("contactNo") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="donorAddressTextBox" runat="server" Text='<%# Bind("donorAddress") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="txtLastDonationDate" runat="server" Text='<%# Bind("lastDonationDate","{0:yyy-MM-dd}") %>' />
                                </td>
                                <td style="width: 100px">
                                    <asp:FileUpload runat="server" ID="fuImage" />
                                    <img src="#" class="img-thumbnail PreviewImgInsert" style="width: 40px; height: 40px; display: none" />
                                    <asp:TextBox ID="image" runat="server" Text='<%# Bind("donorImage") %>' CssClass="d-none"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:LinkButton ID="CancelButton" runat="server" CommandName="Cancel" CssClass="btn btn-dark btn-sm">
                                        <i class="fa fa-backward"></i>
                                    </asp:LinkButton>
                                    <asp:LinkButton ID="InsertButton" runat="server" CommandName="Insert" CssClass="btn btn-success btn-sm">
                                        <i class="fa fa-save"></i>
                                    </asp:LinkButton>
                                </td>
                            </tr>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <tr style="background-color: #DCDCDC; color: #000000;">
                                <td>
                                    <asp:Label ID="donorIdLabel" runat="server" Text='<%# Eval("donorId") %>'></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="donorNameLabel" runat="server" Text='<%# Eval("donorName") %>'></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="ageLabel" runat="server" Text='<%# Eval("age") %>'></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="weightLabel" runat="server" Text='<%# Eval("weight") %>'></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="genderLabel" runat="server" Text='<%# Eval("gender") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="bloodGroupLabel" runat="server" Text='<%# Eval("bloodGroup") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="contactNoLabel" runat="server" Text='<%# Eval("contactNo") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="donorAddressLabel" runat="server" Text='<%# Eval("donorAddress") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="lastDonationDateLabel" runat="server" Text='<%# Eval("lastDonationDate","{0:yyy-MM-dd}") %>' />
                                </td>
                                <td>
                                    <asp:Image ID="image1" runat="server" ImageUrl='<%# "/Admin/Images/" + Eval("donorImage") %>' CssClass="img-thumbnail" Width="40px" Height="40px" />
                                </td>
                                <td>
                                    <asp:LinkButton runat="server" CssClass="btn btn-sm btn-info" CommandName="Edit" ID="LinkButton7">
                                        <i class='fa fa-pencil-square-o'></i>
                                    </asp:LinkButton>
                                    <asp:LinkButton runat="server" CssClass="btn btn-sm btn-danger" CommandName="Delete" ID="LinkButton8">
                                        <i class='fa fa-trash'></i>
                                    </asp:LinkButton>
                                </td>
                            </tr>
                        </ItemTemplate>
                        <SelectedItemTemplate>
                            <tr style="background-color: #008A8C; font-weight: bold; color: #FFFFFF;">
                                <td>
                                    <asp:Label ID="donorIdLabel" runat="server" Text='<%# Eval("donorId") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="donorNameLabel" runat="server" Text='<%# Eval("donorName") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="ageLabel" runat="server" Text='<%# Eval("age") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="weightLabel" runat="server" Text='<%# Eval("weight") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="genderLabel" runat="server" Text='<%# Eval("gender") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="bloodGroupLabel" runat="server" Text='<%# Eval("bloodGroup") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="contactNoLabel" runat="server" Text='<%# Eval("contactNo") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="donorAddressLabel" runat="server" Text='<%# Eval("donorAddress") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="lastDonationDateLabel" runat="server" Text='<%# Eval("lastDonationDate") %>' />
                                </td>
                                <td>
                                    <asp:Image ID="image1" runat="server" ImageUrl='<%# "/Admin/Images/" + Eval("donorImage") %>' CssClass="img-thumbnail" Width="40px" Height="40px" />
                                </td>
                                <td>
                                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                                </td>
                            </tr>
                        </SelectedItemTemplate>
                    </asp:ListView>
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
  <%--              </ContentTemplate>
            </asp:UpdatePanel>--%>
        </div>
    </div>
    <%--<div class="container">
        <asp:UpdateProgress ID="UpdateProgress2" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
            <ProgressTemplate>
                <i class="fa fa-spin fa-spinner fa-2x"></i>
            </ProgressTemplate>
        </asp:UpdateProgress>
    </div>--%>
    <br />
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
    <script type="text/javascript">
        $(document).ready(function () {
            //$('#MainContent_ListView1_fuImage').change(function (e) {
            //    var filename = $('input[type=file]').val().split('\\').pop();
            //    //var lastIndex = filename.lastIndexOf("\\");
            //    $('#MainContent_ListView1_image').val(filename);
            //    $('.PreviewImgInsert').attr("src", URL.createObjectURL(e.target.files[0]));
            //    $('.PreviewImgInsert').addClass("d-block");
            //});
            $('.fuImage').change(function (e) {
                var filename = $('input[type=file]').val().split('\\').pop();
                //var lastIndex = filename.lastIndexOf("\\");
                $('.image').val(filename);
                $('.imgEdit').attr("src", URL.createObjectURL(e.target.files[0]));
                $('.imgEdit').addClass("d-block");
            });
        });
    </script>
</asp:Content>
