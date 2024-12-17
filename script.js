const loginBtn = document.getElementById("loginBtn");
const signupBtn = document.getElementById("signupBtn");
const loginForm = document.getElementById("loginForm");
const signupForm = document.getElementById("signupForm");

function showLogin() {
  loginForm.style.display = "flex";
  signupForm.style.display = "none";
  loginBtn.classList.add("active");
  signupBtn.classList.remove("active");
}

function showSignup() {
  loginForm.style.display = "none";
  signupForm.style.display = "flex";
  signupBtn.classList.add("active");
  loginBtn.classList.remove("active");
}

// Set "Login" as active by default
showLogin();
