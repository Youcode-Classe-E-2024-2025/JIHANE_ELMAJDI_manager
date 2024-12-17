<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My librrary</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="<link rel=" preconnect href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>


</head>

<body>

    <div class="container">
        <div class="form-box">
            <div class="button-box">
                <button class="toggle-btn" id="loginBtn" onclick="showLogin()">Login</button>
                <button class="toggle-btn" id="signupBtn" onclick="showSignup()">Signup</button>
            </div>
            <!-- Login Form -->
            <form id="loginForm" class="input-group">
                <input type="email" class="input-field" placeholder="Email Address" required>
                <input type="password" class="input-field" placeholder="Password" required>
                <a href="#" class="forgot-password">Forgot password?</a>
                <button type="submit" class="submit-btn">Login</button>
            </form>
            <!-- Signup Form -->
            <form id="signupForm" class="input-group" style="display: none;">
                <select name="role" id="role">
                    <option value="">User</option>
                    <option value="">Author</option>
                </select>
                <input type="text" class="input-field" placeholder="Your Name" required>
                <input type="email" class="input-field" placeholder="Email Address" required>
                <input type="password" class="input-field" placeholder="Password" required>
                <button type="submit" class="submit-btn">Signup</button>
            </form>
            <div class="signup-link">
                <p>Not a member? <a href="#" onclick="showSignup()">Signup now</a></p>
            </div>
        </div>
    </div>

    <script src="script.js"></script>
</body>

</html>