<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Procheshta._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row mt-2 mb-2">
        <div class="col">
            <!--SLIDER Srart-->
            <div id="carouselExampleIndicators" class="carousel slide col-md-8 float-left" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
                </ol>
                <!-- Wrapper for slides -->
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img class="d-block w-100 h-25" src="slider_img/6.jpg" alt="First slide">
                        <div class="carousel-caption d-none d-md-block">
                            <h2 class="text-primary font-italic font-weight-bold">“Anybody can give blood”</h2>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100 h-25" src="slider_img/1.jpeg" alt="Second slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100 h-25" src="slider_img/5.jpg" alt="Third slide">
                        <div class="carousel-caption d-none d-md-block">
                            <h2 class="text-danger font-italic font-weight-bold">“Spare only 15 minutes and save one life”</h2>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100 h-25" src="slider_img/2.jpg" alt="Forth slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100 h-25" src="slider_img/8.jpg" alt="Fifth slide">
                    </div>
                </div>
                <!-- Controls -->
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
            <div class="col-md-4 float-right">
                <h1 class="text-danger font-weight-bold font-italic">Procheshta</h1>
                <h2 class="text-danger font-weight-bold font-italic">Blood Bank...</h2>
                <p class="lead text-primary font-weight-bold">Donating blood is one of the greatest ways to help humankind.</p>
                <p class="lead text-success font-weight-bold">A single pint can save three lives, a single gesture can create a million smiles.</p>
                <div class="col-md-4 float-left">
                    <img src="slider_img/blood-drop-icon.jpg" width="100" height="70" />
                </div>
                <div class="col-md-8 mt-4 float-right">
                    <a runat="server" class="btn btn-info btn-sm text-danger" href="~/Patient/RequestBlood.aspx">
                        <img src="slider_img/donate.png" width="35" height="35" />
                        <b>Request For Blood</b></a>
                </div>
            </div>
        </div>
    </div>
    <div class="row bg-light mb-2">
        <div class="col-md-12">
            <h2 class="text-danger font-weight-bold">Why Should You Donate Blood?</h2>
            <p class="font-italic">
                Blood is needed to save lives in times of emergencies and to sustain the lives of those with medical conditions, like leukemia, thalassaemia and bleeding disorders, as well as patients who are undergoing major surgeries.
                For many patients, blood donors are their lifeline. One unit of blood can save three lives! Every hour of the day, 15 units of blood are used in Bangladesh. We need about 120,000 units of blood to meet the transfusion needs of patients every year, equivalent to more than 400 units of blood a day.
                With an ageing population, more advanced life-saving medical procedures, and new hospitals being established, more blood will be needed every year.
            </p>
        </div>
    </div>
    <div class="row">
        <div class="col text-white" style="background-color: #0ed2cb;">
            <marquee class="mt-2" direction="left"><strong> Please Wear Mask Properly And Help Fight COVID-19 ...   Stay Home, Stay Safe & Protect Others ...   </strong>&nbsp;<img src="/logoImg/Coronavirus2.png" width="35" height="35"/></marquee>
        </div>
    </div>
</asp:Content>
