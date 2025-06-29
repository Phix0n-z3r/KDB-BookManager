<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ApplicationKDB.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>مدیریت کتاب‌ها</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            padding: 0;
            background-color: #f7f7f7;
        }
        h2 {
            color: #333;
            text-align: center;
        }
        form {
            max-width: 800px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }
        td {
            padding: 10px;
        }
        input[type="text"], select, .aspNetDisabled {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        input[type="checkbox"] {
            transform: scale(1.5);
            margin: 5px;
        }
        button, input[type="submit"], .aspNetDisabled {
            background-color: #007BFF;
            color: white;
            border: none;
            padding: 10px 20px;
            text-align: center;
            cursor: pointer;
            border-radius: 5px;
            margin-top: 10px;
        }
        button:hover, input[type="submit"]:hover {
            background-color: #0056b3;
        }
        .grid-container {
            margin-top: 20px;
        }
        .grid-container table {
            width: 100%;
            border: 1px solid #ddd;
        }
        .grid-container th, .grid-container td {
            padding: 10px;
            text-align: left;
            border: 1px solid #ddd;
        }
        .grid-container th {
            background-color: #f4f4f4;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h2>مدیریت کتاب‌ها</h2>
        <table>
            <tr>
                <td>شناسه کتاب:</td>
                <td><asp:TextBox ID="txtBookID" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>عنوان:</td>
                <td><asp:TextBox ID="txtTitle" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>شناسه موضوع:</td>
                <td><asp:TextBox ID="txtTopicID" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>سال حق چاپ:</td>
                <td><asp:TextBox ID="txtCopyrightYear" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>شماره ISBN:</td>
                <td><asp:TextBox ID="txtISBNNumber" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>نام ناشر:</td>
                <td><asp:TextBox ID="txtPublisherName" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>محل انتشار:</td>
                <td><asp:TextBox ID="txtPlaceOfPublication" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>نام نویسنده:</td>
                <td><asp:TextBox ID="txtWriterN" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>شماره نسخه:</td>
                <td><asp:TextBox ID="txtEditionNumber" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>نوع جلد:</td>
                <td><asp:TextBox ID="txtCoverType" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>شناسه قفسه:</td>
                <td><asp:TextBox ID="txtShelfId" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>تحویلی:</td>
                <td><asp:CheckBox ID="chkTahYeNo" runat="server" /></td>
            </tr>
        </table>
        <asp:Button ID="btnInsert" runat="server" Text="افزودن کتاب" CssClass="button" OnClick="btnInsert_Click" />
        <asp:Button ID="btnUpdate" runat="server" Text="ویرایش کتاب" CssClass="button" OnClick="btnUpdate_Click" />
        <asp:Button ID="btnDelete" runat="server" Text="حذف کتاب" CssClass="button" OnClick="btnDelete_Click" />
        <asp:Button ID="btnGetBooks" runat="server" Text="مشاهده لیست کتاب‌ها" CssClass="button" OnClick="btnGetBooks_Click" />
        <div class="grid-container">
            <asp:GridView ID="gvBooks" runat="server" AutoGenerateColumns="True" CssClass="grid"></asp:GridView>
        </div>
    </form>
</body>
</html>
