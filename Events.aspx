<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Events.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Navigation" Runat="Server">
  <nav>
            <ul class="nav nav-pills">
                <li class=""><a href="Default.aspx">About Us</a></li>
                <li class="active"><a href="#">Events</a></li>
            </ul>
        </nav>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
  
<div class="panel panel-default shrink"> 
        <asp:Table class="table table-striped table-hover" ID="Table1" runat="server">
            <asp:TableHeaderRow>
                <asp:TableHeaderCell HorizontalAlign="Center" VerticalAlign="Middle" Width="100%" CssClass="h3">Events</asp:TableHeaderCell></asp:TableHeaderRow>
       </asp:Table>

        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
            <AlternatingItemTemplate>
                <li style="background-color: #2a9fd6;color: #FFFFFF; margin:0% 10%;">events:
                    <asp:Label ID="eventsLabel" runat="server" Text='<%# Eval("events") %>' />
                    <br />
                    eventDate:
                    <asp:Label ID="eventDateLabel" runat="server" Text='<%# Eval("eventDate") %>' />
                    <br />
                </li>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <li style="background-color: #999999;">events:
                    <asp:TextBox ID="eventsTextBox" runat="server" Text='<%# Bind("events") %>' />
                    <br />
                    eventDate:
                    <asp:TextBox ID="eventDateTextBox" runat="server" Text='<%# Bind("eventDate") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </li>
            </EditItemTemplate>
            <EmptyDataTemplate>
                No data was returned.
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <li style="">events:
                    <asp:TextBox ID="eventsTextBox" runat="server" Text='<%# Bind("events") %>' />
                    <br />
                    eventDate:
                    <asp:TextBox ID="eventDateTextBox" runat="server" Text='<%# Bind("eventDate") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                </li>
            </InsertItemTemplate>
            <ItemSeparatorTemplate>
                <br />
            </ItemSeparatorTemplate>
            <ItemTemplate>
                <li style="background-color: ###555555;color: #FFFFFF; margin:0% 10%">events:
                    <asp:Label ID="eventsLabel" runat="server" Text='<%# Eval("events") %>' />
                    <br />
                    eventDate:
                    <asp:Label ID="eventDateLabel" runat="server" Text='<%# Eval("eventDate") %>' />
                    <br />
                </li>
            </ItemTemplate>
            <LayoutTemplate>
                <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                    <li runat="server" id="itemPlaceholder" />
                </ul>
                <div style="text-align: center;background-color: #555555;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF;">
                    <asp:DataPager ID="DataPager1" runat="server"  style="background-color=#2a9fd6; color:#ffffff;">
                        <Fields>
                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" ButtonCssClass="btn-primary" />
                        </Fields>
                    </asp:DataPager>
                </div>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <li style="background-color: #E2DED6;font-weight: bold;color: #333333;">events:
                    <asp:Label ID="eventsLabel" runat="server" Text='<%# Eval("events") %>' />
                    <br />
                    eventDate:
                    <asp:Label ID="eventDateLabel" runat="server" Text='<%# Eval("eventDate") %>' />
                    <br />
                </li>
            </SelectedItemTemplate>
        </asp:ListView>
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:eventsConnectionString %>" ProviderName="<%$ ConnectionStrings:eventsConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [events Query]"></asp:SqlDataSource>
        
             </div>
   

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>

