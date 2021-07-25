<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="RequestDetails.aspx.cs" Inherits="Procheshta.Admin.RequestDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Content/font-awesome.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <div class="d-flex flex-row justify-content-between p-2 mb-1">
                        <div>
                            <div class="text-info"><h4>Date wise request :</h4></div>
                            <asp:DropDownList ID="ddlDate" CssClass="form-control" AutoPostBack="True" DataTextFormatString="{0:yyyy-MM-dd}" runat="server" DataSourceID="dsDate" DataTextField="caseDate" DataValueField="caseDate">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="dsDate" runat="server" ConnectionString="<%$ ConnectionStrings:ProcheshtaDBCon %>" SelectCommand="SELECT DISTINCT [caseDate] FROM [BloodRequest]"></asp:SqlDataSource>
                        </div>
                    </div>
                    <asp:GridView ID="GridView2" CssClass="table table-bordered table-sm" runat="server" AllowPaging="True" AllowSorting="True" DataKeyNames="requestID" AutoGenerateColumns="False" DataSourceID="dsRequestFilter" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
                        <Columns>
                            <asp:BoundField DataField="requestID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="requestID" />
                            <asp:BoundField DataField="patientID" HeaderText="Patient ID" SortExpression="patientID" />
                            <asp:BoundField DataField="bloodGroupId" HeaderText="BloodGroup Id" SortExpression="bloodGroupId" />
                            <asp:BoundField DataField="caseDate" HeaderText="Case Date" SortExpression="caseDate" DataFormatString="{0:yyyy-MM-dd}" />
                            <asp:BoundField DataField="reasonForBlood" HeaderText="Reason For Blood" SortExpression="reasonForBlood" />
                            <asp:BoundField DataField="contactNo" HeaderText="Contact No" SortExpression="contactNo" />
                            <asp:BoundField DataField="hospitalID" HeaderText="Hospital ID" SortExpression="hospitalID" />                          
                        </Columns>
                        <FooterStyle BackColor="White" ForeColor="#333333" />
                        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="White" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#487575" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#275353" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="dsRequestFilter" runat="server" ConnectionString="<%$ ConnectionStrings:ProcheshtaDBCon %>" SelectCommand="SELECT * FROM [BloodRequest] WHERE ([caseDate] = @caseDate)">
                      
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlDate" Name="caseDate" PropertyName="SelectedValue" Type="DateTime" />
                        </SelectParameters>
                        
                    </asp:SqlDataSource>
                    <div class="text-primary">
                        <h4>All Request :</h4>
                    </div>
                    <asp:GridView ID="GridView1" CssClass="table table-bordered table-sm" runat="server" AllowPaging="True" DataKeyNames="requestID" DataSourceID="dsRequest" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="requestID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="requestID" />
                            <asp:BoundField DataField="patientName" HeaderText="Patient Name" SortExpression="patientName" />
                            <asp:BoundField DataField="bloodGroup" HeaderText="Blood Group" SortExpression="bloodGroup" />
                            <asp:BoundField DataField="caseDate" HeaderText="Case Date" SortExpression="caseDate" DataFormatString="{0:yyyy-MM-dd}" />
                            <asp:BoundField DataField="reasonForBlood" HeaderText="Reason For Blood" SortExpression="reasonForBlood" />
                            <asp:BoundField DataField="contactNo" HeaderText="Contact No" SortExpression="contactNo" />
                            <asp:BoundField DataField="hospitalName" HeaderText="Hospital Name" SortExpression="hospitalName" />
                            <asp:TemplateField ShowHeader="False">
                                <ItemTemplate>
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
                    <asp:SqlDataSource ID="dsRequest" runat="server" ConnectionString="<%$ ConnectionStrings:ProcheshtaDBCon %>" DeleteCommand="DELETE FROM [BloodRequest] WHERE [requestID] = @requestID" InsertCommand="INSERT INTO [BloodRequest] ([patientID], [bloodGroupId], [caseDate], [reasonForBlood], [contactNo], [hospitalID]) VALUES (@patientID, @bloodGroupId, @caseDate, @reasonForBlood, @contactNo, @hospitalID)" SelectCommand="select br.requestID, p.patientName, b.bloodGroup, br.caseDate,br.reasonForBlood, br.contactNo, h.hospitalName from BloodRequest br inner Join Patients p on p.patientID=br.patientID
                            inner Join BloodGroups b on b.bloodGroupId=br.bloodGroupId inner Join Hospital h on h.hospitalId=br.hospitalID" UpdateCommand="UPDATE [BloodRequest] SET [patientID] = @patientID, [bloodGroupId] = @bloodGroupId, [caseDate] = @caseDate, [reasonForBlood] = @reasonForBlood, [contactNo] = @contactNo, [hospitalID] = @hospitalID WHERE [requestID] = @requestID">
                        <DeleteParameters>
                            <asp:Parameter Name="requestID" Type="Int32" />
                        </DeleteParameters>                     
                        <UpdateParameters>
                            <asp:Parameter Name="patientID" Type="Int32" />
                            <asp:Parameter Name="bloodGroupId" Type="Int32" />
                            <asp:Parameter Name="caseDate" Type="DateTime" />
                            <asp:Parameter Name="reasonForBlood" Type="String" />
                            <asp:Parameter Name="contactNo" Type="String" />
                            <asp:Parameter Name="hospitalID" Type="Int32" />
                            <asp:Parameter Name="requestID" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>
