<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Samet_Cakmak_PMTP.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Giriş</title>
    <style>
        body {
            background-color: #e9ecef; /* Daha açık bir arka plan rengi */
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; /* Modern bir yazı tipi */
            color: #343a40; /* Daha koyu bir yazı rengi */
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .login-container {
            width: 100%;
            max-width: 400px;
            padding: 30px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        .login-container h2 {
            margin-bottom: 20px;
            font-size: 24px;
            color: #007bff;
        }
        .form-group {
            margin-bottom: 20px;
            text-align: left;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        .form-group input[type="text"],
        .form-group input[type="password"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ced4da;
            border-radius: 4px;
            box-sizing: border-box;
        }
        .form-group input[type="checkbox"] {
            margin-right: 5px;
        }
        .form-group .checkbox-container {
            display: flex;
            align-items: center;
        }
        .form-group .error-message {
            color: red;
            margin-top: 5px;
        }
        .form-group .btn {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .form-group .btn:hover {
            background-color: #0056b3;
        }
        .login-info {
            margin-top: 20px;
            font-size: 14px;
            color: #666;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-container">
            <h2>Kullanıcı Girişi</h2>
            <div class="form-group">
                <asp:Label ID="lblUsername" runat="server" Text="Kullanıcı Adı:"></asp:Label>
                <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvUsername" runat="server" 
                    ControlToValidate="txtUsername" 
                    ErrorMessage="Kullanıcı adı gerekli" 
                    ForeColor="Red" 
                    CssClass="error-message">
                </asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <asp:Label ID="lblPassword" runat="server" Text="Şifre:"></asp:Label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvPassword" runat="server" 
                    ControlToValidate="txtPassword" 
                    ErrorMessage="Şifre gerekli" 
                    ForeColor="Red" 
                    CssClass="error-message">
                </asp:RequiredFieldValidator>
            </div>
            <div class="form-group checkbox-container">
                <asp:CheckBox ID="chkRememberMe" runat="server" />
                <asp:Label ID="lblRememberMe" runat="server" Text="Beni Hatırla" AssociatedControlID="chkRememberMe"></asp:Label>
            </div>
            <div class="form-group">
                <asp:Label ID="lblError" runat="server" CssClass="error-message" Visible="false"></asp:Label>
            </div>
            <div class="form-group">
                <asp:Button ID="btnLogin" runat="server" Text="Giriş" OnClick="btnLogin_Click" 
                    CssClass="btn" />
            </div>
            <div class="login-info">
                <p>Giriş Bilgileri: Öğrenci - o1</p>
            </div>
        </div>
    </form>
</body>
</html>
