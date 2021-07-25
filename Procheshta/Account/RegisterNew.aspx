<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterNew.aspx.cs" Inherits="Procheshta.Account.RegisterNew" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Register</title>

    <!-- Custom fonts for this template-->
    <link href="/Admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="/Admin/css/sb-admin-2.min.css" rel="stylesheet">
</head>

<body class="bg-gradient-info">
    <form runat="server">
        <div class="container">

            <div class="card o-hidden border-0 shadow-lg my-5">
                <div class="card-body p-0">
                    <!-- Nested Row within Card Body -->
                    <div class="row">
                        <div class="col-lg-6 d-none d-lg-block bg-register-image"></div>
                        <div class="col-lg-6">
                            <div class="p-5">
                                <div class="text-center">
                                    <h1 class="h4 text-gray-900 mb-4">Create an Account!</h1>
                                </div>
                                <hr />
                                <div class="form-group">
                                    <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-6 control-label">Email</asp:Label>
                                    <div class="col-md-12">
                                        <asp:TextBox runat="server" ID="Email" CssClass="form-control" />
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Email" CssClass="text-danger" ErrorMessage="The email field is required" />
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Email Format" CssClass="text-danger" ControlToValidate="Email" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                                        </asp:RegularExpressionValidator>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-6 control-label">Password</asp:Label>
                                    <div class="col-md-12">
                                        <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                                            CssClass="text-danger" ErrorMessage="The password field is required" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-6 control-label">Confirm password</asp:Label>
                                    <div class="col-md-12">
                                        <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                                            CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                                        <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                                            CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-12">
                                        <asp:Button runat="server" OnClick="Unnamed_Click" Text="Register Account" CssClass="btn btn-info btn-user btn-block" />
                                    </div>
                                    <p class="text-danger">
                                        <asp:Literal runat="server" ID="ErrorMessage" />
                                    </p>
                                </div>                             
                                <hr>
                                <div class="text-center">
                                    <a class="small" href="Login.aspx">Already have an account? Login!</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

        <!-- Bootstrap core JavaScript-->
        <script src="/Admin/vendor/jquery/jquery.min.js"></script>
        <script src="/Admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Core plugin JavaScript-->
        <script src="/Admin/vendor/jquery-easing/jquery.easing.min.js"></script>

        <!-- Custom scripts for all pages-->
        <script src="/Admin/js/sb-admin-2.min.js"></script>
    </form>
</body>

</html>
