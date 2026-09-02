<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Twolayer_Application.Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style5 {
            width: 252px;
        }
        .auto-style6 {
            height: 26px;
            width: 252px;
        }
        .auto-style7 {
            width: 259px;
        }
        .auto-style8 {
            height: 26px;
            width: 259px;
        }
        .auto-style10 {
            width: 259px;
            height: 29px;
        }
        .auto-style11 {
            width: 252px;
            height: 29px;
        }
        .auto-style12 {
            height: 29px;
        }
        .auto-style13 {
            width: 275px;
        }
        .auto-style14 {
            height: 29px;
            width: 275px;
        }
        .auto-style15 {
            height: 26px;
            width: 275px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="PROFILE"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label5" runat="server" Text="Name"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtpname" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14">
                        <asp:Label ID="Label6" runat="server" Text="Age"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:TextBox ID="txtpage" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style11"></td>
                    <td class="auto-style12"></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label7" runat="server" Text="Address"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtpaddress" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label8" runat="server" Text="Photo"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:Image ID="Image1" runat="server" Height="102px" Width="97px" />
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label9" runat="server" Text="Username"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtpusername" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label10" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtppwd" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style7">
                        <asp:Button ID="btnupdate" runat="server" OnClick="btnupdate_Click" Text="Update" />
                    </td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style7">
                        <asp:Label ID="lbldisplay" runat="server" Text="successful or not" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15"></td>
                    <td class="auto-style8"></td>
                    <td class="auto-style6"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                            <Columns>
                                <asp:BoundField DataField="id" HeaderText="ID" />
                                <asp:BoundField DataField="name" HeaderText="Name" />
                                <asp:BoundField DataField="age" HeaderText="Age" />
                                <asp:BoundField DataField="address" HeaderText="Address" />
                                <asp:ImageField DataImageUrlField="photo" HeaderText="Photo">
                                    <ControlStyle Height="70px" Width="70px" />
                                </asp:ImageField>
                            </Columns>
                        </asp:GridView>
                    </td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:DataList ID="DataList1" runat="server">
                            <ItemTemplate>
                                <table class="auto-style1">
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label11" runat="server" Text="Name"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label15" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label12" runat="server" Text="Age"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label16" runat="server" Text='<%# Eval("age") %>'></asp:Label>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label13" runat="server" Text="Address"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label17" runat="server" Text='<%# Eval("address") %>'></asp:Label>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label14" runat="server" Text="Photo"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Image ID="Image2" runat="server" Height="50px" ImageUrl='<%# Eval("photo") %>' Width="69px" />
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:DataList>
                    </td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
