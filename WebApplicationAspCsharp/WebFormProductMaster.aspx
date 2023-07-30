<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormProductMaster.aspx.cs" Inherits="WebApplicationAspCsharp.WebFormProductMaster" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script language="javascript">
        function isNumberKey(evt) {
            var charCode = (evt.which) ? evt.which : evt.keyCode;
            if (charCode < 48 || charCode > 57) {
                alert('Only numeric allowed');
                return false;
            }
                
            return true;
        }
    </script>
    <style type="text/css">
        .auto-style1 {
            width: 224px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table style="width: 100%;">
            <tr>
                <td align="right" class="auto-style1"><asp:Label ID="Label1" runat="server" Text="Product Name: "></asp:Label></td>
                <td><asp:TextBox ID="txtProductName" runat="server"></asp:TextBox></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td align="right" class="auto-style1"><asp:Label ID="Label2" runat="server" Text="Price: "></asp:Label></td>
                <td><asp:TextBox ID="txtPrice" onkeypress="return isNumberKey(event)" runat="server"></asp:TextBox>
                    
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td align="right" class="auto-style1"><asp:Label ID="Label3" runat="server" Text="Qty: "></asp:Label></td>
                <td><asp:TextBox ID="txtQty" runat="server"></asp:TextBox></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td align="right" class="auto-style1"><asp:Label ID="Label4" runat="server" Text="Remarks: "></asp:Label></td>
                <td><asp:TextBox ID="txtRemarks" runat="server"></asp:TextBox></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td align="right" class="auto-style1"></td>
                <td><asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" /><asp:Button ID="btnShow" runat="server" Text="Show" OnClick="btnShow_Click" /></td>
                <td>&nbsp;</td>
            </tr>

            <tr>
                <td align="right" class="auto-style1"></td>
                <td><asp:GridView ID="GridView1" runat="server"></asp:GridView>  </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
            
            
            
        </div>
        
    </form>
</body>
</html>
