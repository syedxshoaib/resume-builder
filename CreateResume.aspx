<%@ Page Title="CreateResume" Language="C#" MasterPageFile="~/ResumePanel/ResumeMaster.Master" AutoEventWireup="true" CodeBehind="CreateResume.aspx.cs" Inherits="ResumeBuilderApplications.ResumePanel.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


  <center style="font-size: medium; font-weight: bold; background-color: #CCFF99">
<br />
<br />
<br />
<br />
<table align="center" style="width: 50%; height: 700px; background-color: #C0C0C0; font-size: large; font-weight: bold;">
        <tr>
            <td colspan="3" style="height: 77px">
            <h1 align="center" style="background-color: #000000; color: #FFFFFF"> Fill In BioData</h1>
            </td>
        </tr>
         <tr>
            <td align="center">
               <asp:Label ID="Label1" runat="server" Text="Resume Id"></asp:Label></td>
            <td >
                <asp:Label ID="lblSid" runat="server" Text="Label"></asp:Label>
               
                </td>
            
        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="lblSName" runat="server" Text="Students Name"></asp:Label></td>
            <td >
               <asp:TextBox placeholder="Ex Jayesh D Ahir" class="input--style-5" ID="txtSName" runat="server"></asp:TextBox> 
              
               </td>
            <td align="center"> 
                <asp:Image ID="Image3" Height="87px" Width="127px" runat="server" 
                    BackColor="White" BorderColor="Red" BorderStyle="Groove" /></td>
        </tr>
        <tr>
            <td align="center">
               <asp:Label ID="lblSkill" runat="server" Text="Skill & Ability"></asp:Label></td>
            <td >
                <asp:TextBox ID="txtSkill" placeholder="nalytical,Excellent,presentation" class="input--style-5" runat="server"></asp:TextBox>
               
                </td>
            
        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="lblEducation" runat="server" Text="Education"></asp:Label></td>
            <td>
               <asp:TextBox ID="txtEducation" TextMode="MultiLine" placeholder="BCA-MJ College,SUrat" class="input--style-5" runat="server"></asp:TextBox> 
              
               </td>
            
        </tr>
     <tr>
            <td align="center">
                <asp:Label ID="lbldob" runat="server" Text="Date Of Birth"></asp:Label></td>
            <td>
               <asp:TextBox ID="txtDob" class="input--style-5" runat="server"></asp:TextBox> 
              
               </td>
            
        </tr>
      <tr>
            <td align="center">
                <asp:Label ID="lblMobile" runat="server" Text="Mobile"></asp:Label></td>
            <td>
               <asp:TextBox ID="txtMobile" placeholder="+918585859696" class="input--style-5" runat="server"></asp:TextBox> 
              
               </td>
            
        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label></td>
            <td>
               <asp:TextBox ID="txtEmail" placeholder="jayesh@gmail.com" class="input--style-5" runat="server"></asp:TextBox> 
              
               </td>
            
        </tr>
     <tr>
            <td align="center">
                <asp:Label ID="lblAddress" runat="server" Text="Address"></asp:Label></td>
            <td>
               <asp:TextBox ID="txtAddress" placeholder="To:Ahemdabad Dist:Ahemdabad State:Gujrat" TextMode="MultiLine" class="input--style-5" runat="server"></asp:TextBox> 
              
               </td>
            
        </tr>
        
     <tr>
            <td align="center">
                <asp:Label ID="lblKnowledge" runat="server" Text="Knowledge"></asp:Label></td>
            <td>
               <asp:TextBox ID="txtKnowledge" placeholder="ASP.NET,C#,NET,C." class="input--style-5" runat="server"></asp:TextBox> 
              
               </td>
            
        </tr>
     <tr>
            <td align="center">
                <asp:Label ID="lblExpriance" runat="server" Text="Email"></asp:Label></td>
            <td>
                <asp:DropDownList ID="DropDownListExpriance" runat="server">
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>1 Years</asp:ListItem>
                    <asp:ListItem>2 Years</asp:ListItem>
                    <asp:ListItem>5 Years Up</asp:ListItem>
                </asp:DropDownList> 
              
               </td>
            
        </tr>
     <tr>
            <td align="center">
                <asp:Label ID="lblFeald" runat="server" Text="Field"></asp:Label></td>
            <td>
               <asp:TextBox ID="txtFeald" placeholder="Ex.Software Developer" class="input--style-5" runat="server"></asp:TextBox> 
              
               </td>
            
        </tr>
    <tr>
            <td align="center">
                <asp:Label ID="lblObjectives" runat="server" Text="Objectives"></asp:Label></td>
            <td>
               <asp:TextBox ID="txtObjectives" TextMode="MultiLine" placeholder="To grow with the company." class="input--style-5" runat="server"></asp:TextBox> 
              
               </td>
            
        </tr>
    <tr>
            <td align="center">
                <asp:Label ID="lblimage" runat="server" Text="Image"></asp:Label></td>
            <td>
                <asp:FileUpload class="input--style-5" ID="FileUpload1" runat="server" /> 
                    </td>
            <td><asp:Button  ID="btnuploads" runat="server" Text="Upload" 
                      BackColor="#99CC00" Font-Bold="True" 
                     Font-Size="Large" Height="27px" Width="118px" OnClick="btnuploads_Click" 
                    /></td>
        </tr>
        <tr>
            <td colspan="3" align="center"><asp:Button ID="btnfadd"  runat="server" 
               Text="Add Item"  BackColor="#FF5050" Font-Bold="True" 
                    Font-Size="Large" Height="29px" Width="183px" OnClick="btnfadd_Click"  /></td>
        </tr>
</table>
<br />
<br />
<br />
<br />

</center>
</asp:Content>








