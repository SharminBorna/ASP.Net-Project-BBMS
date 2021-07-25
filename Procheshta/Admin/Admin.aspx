<%@ Page Title="Dashboard - Admin" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Procheshta.Admin.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid">

        <!-- Page Heading -->
        <div class="row">
            <div class="col">
                <div class="col-md-6 float-left d-sm-flex align-items-center justify-content-md-start mb-4">
                    <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
                </div>
                <div class="col-md-6 float-right d-sm-flex align-items-center justify-content-end mb-4">
                    <a href="DonorsReport.aspx" class="d-none d-sm-inline-block btn btn-sm btn-info shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i>Donors Report</a>&nbsp;&nbsp;
                    <a href="PatientsReport.aspx" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i>Patients Report</a>
                </div>
            </div>
        </div>

        <!-- Content Row -->
        <div class="row">

            <!-- Blood-->
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card border-left-danger shadow h-100 py-2">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                    O positive is the most common blood type
                                </div>
                                <div class="h1 mb-0 font-weight-bold text-danger">O+</div>
                            </div>
                            <div class="col-auto mt-5">
                                <i class="fas fa-ambulance fa-2x text-success"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Blood -->
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card border-left-danger shadow h-100 py-2">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                    O negative donors are often called ‘universal donors’
                                </div>
                                <div class="h1 mb-0 font-weight-bold text-danger">O-</div>
                            </div>
                            <div class="col-auto mt-5">
                                <i class="fas fa-ambulance fa-2x text-success"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Blood -->
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card border-left-danger shadow h-100 py-2">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                    A positive is the second most common blood type 
                                </div>
                                <div class="h1 mb-0 font-weight-bold text-danger">A+</div>
                            </div>
                            <div class="col-auto mt-5">
                                <i class="fas fa-ambulance fa-2x text-success"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Blood -->
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card border-left-danger shadow h-100 py-2">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                    A negative is the universal platelet type
                                </div>
                                <div class="h1 mb-0 font-weight-bold text-danger">A-</div>
                            </div>
                            <div class="col-auto mt-5">
                                <i class="fas fa-ambulance fa-2x text-success"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Blood -->
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card border-left-danger shadow h-100 py-2">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                    Only 8% of donors have B positive blood
                                </div>
                                <div class="h1 mb-0 font-weight-bold text-danger">B+</div>
                            </div>
                            <div class="col-auto mt-5">
                                <i class="fas fa-ambulance fa-2x text-success"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <!-- Blood -->
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card border-left-danger shadow h-100 py-2">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                    Just 2% of our blood donors have B negative blood
                                </div>
                                <div class="h1 mb-0 font-weight-bold text-danger">B-</div>
                            </div>
                            <div class="col-auto mt-5">
                                <i class="fas fa-ambulance fa-2x text-success"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Blood -->
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card border-left-danger shadow h-100 py-2">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                    Around 2% of donors have AB positive blood 
                                </div>
                                <div class="h1 mb-0 font-weight-bold text-danger">AB+</div>
                            </div>
                            <div class="col-auto mt-5">
                                <i class="fas fa-ambulance fa-2x text-success"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card border-left-danger shadow h-100 py-2">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                    AB negative is the rarest of the 8 main blood types
                                </div>
                                <div class="h1 mb-0 font-weight-bold text-danger">AB-</div>
                            </div>
                            <div class="col-auto mt-5">
                                <i class="fas fa-ambulance fa-2x text-success"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <div class="row">
            <div class="col text-white" style="background-color: #0ed2cb;">
                <marquee class="mt-2" direction="left"><strong> Please Wear Mask Properly And Help Fight COVID-19 ...   Stay Home, Stay Safe & Protect Others ...   </strong>&nbsp;<img src="/logoImg/Coronavirus2.png" width="35" height="35"/></marquee>
            </div>
        </div>
    </div>
</asp:Content>
