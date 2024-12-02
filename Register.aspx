<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="LOGINSTART.Register" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <style type="text/css">
        :root {
            --primary-color: #4F46E5;
            --error-color: #EF4444;
            --success-color: #10B981;
            --border-color: #E5E7EB;
            --text-color: #1F2937;
            --bg-color: #F3F4F6;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: system-ui, -apple-system, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif;
            background-color: var(--bg-color);
            color: var(--text-color);
            line-height: 1.5;
        }

        .page-container {
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 2rem;
        }

        .form-container {
            background-color: white;
            border-radius: 1rem;
            box-shadow: 0 4px 6px -1px rgb(0 0 0 / 0.1), 0 2px 4px -2px rgb(0 0 0 / 0.1);
            width: 100%;
            max-width: 800px;
            padding: 2rem;
        }

        .form-header {
            text-align: center;
            margin-bottom: 2rem;
        }

        .form-title {
            font-size: 1.875rem;
            font-weight: 600;
            color: var(--text-color);
        }

        .form-subtitle {
            color: #6B7280;
            margin-top: 0.5rem;
        }

        .input-grid {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 1.5rem;
            margin-bottom: 1.5rem;
        }

        .input-full {
            grid-column: span 2;
        }

        .form-group {
            display: flex;
            flex-direction: column;
        }

        .form-label {
            font-size: 0.875rem;
            font-weight: 500;
            margin-bottom: 0.5rem;
        }

        .form-input {
            padding: 0.75rem 1rem;
            border: 1px solid var(--border-color);
            border-radius: 0.5rem;
            font-size: 1rem;
            transition: all 0.2s;
        }

        .form-input:focus {
            outline: none;
            border-color: var(--primary-color);
            box-shadow: 0 0 0 3px rgba(79, 70, 229, 0.1);
        }

        .textarea-input {
            resize: vertical;
            min-height: 100px;
        }

        .error-message {
            font-size: 0.75rem;
            color: var(--error-color);
            margin-top: 0.25rem;
        }

        .submit-button {
            background-color: var(--primary-color);
            color: white;
            padding: 0.75rem 1.5rem;
            border: none;
            border-radius: 0.5rem;
            font-size: 1rem;
            font-weight: 500;
            width: 100%;
            cursor: pointer;
            transition: background-color 0.2s;
        }

        .submit-button:hover {
            background-color: #4338CA;
        }

        .submit-button:focus {
            outline: none;
            box-shadow: 0 0 0 3px rgba(79, 70, 229, 0.5);
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .input-grid {
                grid-template-columns: 1fr;
            }

            .input-full {
                grid-column: span 1;
            }

            .form-container {
                padding: 1.5rem;
            }
        }

        /* Validation States */
        .form-input.valid {
            border-color: var(--success-color);
        }

        .form-input.invalid {
            border-color: var(--error-color);
        }

        /* Loading State */
        .submit-button:disabled {
            background-color: #9CA3AF;
            cursor: not-allowed;
        }

        /* Animation */
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(10px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .form-container {
            animation: fadeIn 0.3s ease-out;
        }
    </style>
</head>
<body>
    <div class="page-container">
        <div class="form-container">
            <div class="form-header">
                <h1 class="form-title">Create Account</h1>
                <p class="form-subtitle">Fill in your information to get started</p>
            </div>

            <form id="form1" runat="server">
                <div class="input-grid">
                    <!-- First Name -->
                    <div class="form-group">
                        <label for="FirstNameTextbox" class="form-label">First Name</label>
                        <asp:TextBox ID="FirstNameTextbox" runat="server" CssClass="form-input" placeholder="Enter your first name" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                            ControlToValidate="FirstNameTextbox"
                            Display="Dynamic"
                            ErrorMessage="First name is required"
                            CssClass="error-message" />
                    </div>

                    <!-- Last Name -->
                    <div class="form-group">
                        <label for="LastNameTextbox" class="form-label">Last Name</label>
                        <asp:TextBox ID="LastNameTextbox" runat="server" CssClass="form-input" placeholder="Enter your last name" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                            ControlToValidate="LastNameTextbox"
                            Display="Dynamic"
                            ErrorMessage="Last name is required"
                            CssClass="error-message" />
                    </div>

                    <!-- Email -->
                    <div class="form-group">
                        <label for="EmailTextbox" class="form-label">Email</label>
                        <asp:TextBox ID="EmailTextbox" runat="server" CssClass="form-input" placeholder="you@example.com" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                            ControlToValidate="EmailTextbox"
                            Display="Dynamic"
                            ErrorMessage="Email is required"
                            CssClass="error-message" />
                        <asp:RegularExpressionValidator ID="EmailRegexValidator" runat="server"
                            ControlToValidate="EmailTextbox"
                            ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"
                            ErrorMessage="Please enter a valid email address"
                            CssClass="error-message"
                            Display="Dynamic" />
                    </div>

                    <!-- Phone -->
                    <div class="form-group">
                        <label for="PhoneTextbox" class="form-label">Phone Number</label>
                        <asp:TextBox ID="PhoneTextbox" runat="server" CssClass="form-input" placeholder="1234567890" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                            ControlToValidate="PhoneTextbox"
                            Display="Dynamic"
                            ErrorMessage="Phone number is required"
                            CssClass="error-message" />
                        <asp:RegularExpressionValidator ID="PhoneRegexValidator" runat="server"
                            ControlToValidate="PhoneTextbox"
                            ValidationExpression="^\d{10}$"
                            ErrorMessage="Please enter a valid 10-digit phone number"
                            CssClass="error-message"
                            Display="Dynamic" />
                    </div>

                    <!-- Address -->
                    <div class="form-group input-full">
                        <label for="AddressTextbox" class="form-label">Address</label>
                        <asp:TextBox ID="AddressTextbox" runat="server" CssClass="form-input textarea-input" 
                            TextMode="MultiLine" Rows="3" placeholder="Enter your full address" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                            ControlToValidate="AddressTextbox"
                            Display="Dynamic"
                            ErrorMessage="Address is required"
                            CssClass="error-message" />
                    </div>

                    <!-- Username -->
                    <div class="form-group">
                        <label for="UsernameTextbox" class="form-label">Username</label>
                        <asp:TextBox ID="UsernameTextbox" runat="server" CssClass="form-input" placeholder="Choose a username" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
                            ControlToValidate="UsernameTextbox"
                            Display="Dynamic"
                            ErrorMessage="Username is required"
                            CssClass="error-message" />
                    </div>

                    <!-- Password -->
                    <div class="form-group">
                        <label for="PasswordTextbox" class="form-label">Password</label>
                        <asp:TextBox ID="PasswordTextbox" runat="server" TextMode="Password" CssClass="form-input" 
                            placeholder="••••••••" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server"
                            ControlToValidate="PasswordTextbox"
                            Display="Dynamic"
                            ErrorMessage="Password is required"
                            CssClass="error-message" />
                    </div>

                    <!-- Confirm Password -->
                    <div class="form-group input-full">
                        <label for="ConfirmPasswordTextbox" class="form-label">Confirm Password</label>
                        <asp:TextBox ID="ConfirmPasswordTextbox" runat="server" TextMode="Password" 
                            CssClass="form-input" placeholder="••••••••" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server"
                            ControlToValidate="ConfirmPasswordTextbox"
                            Display="Dynamic"
                            ErrorMessage="Please confirm your password"
                            CssClass="error-message" />
                        <asp:CompareValidator ID="CompareValidator1" runat="server"
                            ControlToValidate="ConfirmPasswordTextbox"
                            ControlToCompare="PasswordTextbox"
                            Display="Dynamic"
                            ErrorMessage="Passwords do not match"
                            CssClass="error-message" />
                    </div>
                </div>

                <!-- Submit Button -->
                <asp:Button ID="SignUpButton" runat="server" Text="Create Account" 
                    CssClass="submit-button" OnClick="SignUpButton_Click" />
            </form>
        </div>
    </div>
</body>
</html>