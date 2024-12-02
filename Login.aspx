<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LOGINSTART.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <style type="text/css">
        /* General Styles */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f7f6;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        form {
            background-color: #fff;
            border-radius: 8px;
            padding: 30px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
        }

        /* Title */
        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }

        /* Label Styles */
        label {
            font-size: 14px;
            color: #333;
            display: block;
            margin-bottom: 8px;
        }

        /* Input Fields */
        .input-field {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 14px;
        }

        .input-field:focus {
            outline: none;
            border-color: #0066cc;
        }

        /* Error Message */
        .error-message {
            color: #f44336;
            font-size: 12px;
            margin-top: -10px;
            margin-bottom: 10px;
        }
        .button-container {
            display: flex; /* Enable flexbox layout */
            justify-content: space-between; /* Place buttons on opposite sides */
            width: 100%; /* Make the container take up full width */
            margin-top: 20px; /* Add some space at the top */
        }

        /* Button Styles */
        .login-btn {
            padding: 10px;
            background-color: #0066cc;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .login-btn:hover {
            background-color: #0057a0;
        }
        .link-btn {
            display: inline-block;
            padding: 10px 20px;
            background-color: #0066cc;
            color: white;
            text-align: center;
            text-decoration: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

.link-btn:hover {
    background-color: #0057a0;
}

        /* Adjust for Responsive Design */
        @media (max-width: 600px) {
            form {
                padding: 20px;
            }
        }
    </style>
    <script type="text/javascript">
        function togglePasswordVisibility() {
            var passwordField = document.getElementById("PasswordTextbox");
            var checkbox = document.getElementById("ShowPasswordCheckbox");
            
            // Toggle the password field type between 'password' and 'text'
            if (checkbox.checked) {
                passwordField.type = "text";
            } else {
                passwordField.type = "password";
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Login</h2>
            
            <!-- Username Field -->
            <div>
                <label for="UsernameTextbox">USERNAME</label>
                <asp:TextBox ID="UsernameTextbox" runat="server" CssClass="input-field" />
                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidator1"
                    runat="server"
                    ControlToValidate="UsernameTextbox"
                    Display="Dynamic"
                    ErrorMessage="Required Username"
                    ForeColor="Red"
                    CssClass="error-message"
                    SetFocusOnError="True" />
            </div>

            <!-- Password Field -->
            <div>
                <label for="PasswordTextbox">PASSWORD</label>
                <asp:TextBox ID="PasswordTextbox" runat="server" TextMode="Password" CssClass="input-field" />
                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidator2"
                    runat="server"
                    ControlToValidate="PasswordTextbox"
                    Display="Dynamic"
                    ErrorMessage="Required Password"
                    ForeColor="Red"
                    CssClass="error-message"
                    SetFocusOnError="True" />
            </div>
            <div class="show-password">
                <input type="checkbox" id="ShowPasswordCheckbox" onclick="togglePasswordVisibility()" />
                <label for="ShowPasswordCheckbox">Show Password</label>
            </div>

            <!-- Login Button -->
            <div class="button-container">
                <asp:HyperLink ID="CreateAccountLink" runat="server" Text="Create Account" NavigateUrl="Register.aspx" CssClass="link-btn" />
                <asp:Button ID="Button1" runat="server" Text="LOGIN" CssClass="login-btn" OnClick="Button1_Click" />
            </div>

        </div>
    </form>
</body>
</html>
