var currentTab = 0;
window.onload = function() {
    $(document).on("keypress", function(e) {
        if (e.key == "Enter") {
            document.loginForm.nextTab.click();
        }
    });
    $(".show-password").on("click", function() {
        if ($("#password").prop("type") == "password") {
            $("#password").prop("type", "text");
        } else {
            $("#password").prop("type", "password");
        }
    });

    showTab(currentTab);
};

var coderesult;
async function sendOTP(number) {
    var ok = false;
    await window.recaptchaVerifier.verify().then(async function() {
        await window
            .firebaseSignIn(number)
            .then(function(confirmationResult) {
                window.confirmationResult = confirmationResult;
                coderesult = confirmationResult;
                ok = true;
                console.log("Message sent");
            })
            .catch(function(error) {
                console.log(error.message);
                $("#alert-phone").show();
            });
    });
    return ok;
}

async function verify() {
    var code = $("#verification").val();
    var verifyok = false;

    await coderesult
        .confirm(code)
        .then(function(result) {
            var user = result.user;
            verifyok = true;
        })
        .catch(function(error) {
            $("#alert-code").show();
        });
    return verifyok;
}

function showTab(n) {
    var x = document.getElementsByClassName("tab");
    x[n].style.display = "block";
}

async function nextPrev(n) {
    var x = document.getElementsByClassName("tab");
    if (!(await validateForm())) return false;

    if (x.length - 1 <= currentTab) {
        if (route().current("login")) {
            document.getElementById("loginForm").submit();
        } else {
            document.getElementById("regForm").submit();
        }
    } else {
        /* if (currentTab == 0) {
            var ok = false;
            if (route().current("login")) {
                var email = $("#email").val();
                ok = await new Promise(async(resolve, reject) => {
                    await $.get(
                        route("ajax.phone.get", { email: email }),
                        async function(resp) {
                            resolve(await sendOTP(resp));
                        }
                    ).fail(function(err) {
                        reject(err.responseJSON);
                    });
                }).catch(function(err) {
                    if (err.error) {
                        $("#login-alert").text(
                            "Tài khoản không có trong hệ thống! Vui lòng kiểm tra lại."
                        );
                        $("#login-alert").show();
                        return ok.error;
                    }
                });
            } else {
                var phone = $("#phone").val();
                phone = phone.replace(/^0/g, "+84");
                ok = await sendOTP(phone);
            }
            if (!ok) return ok;
        } */
        x[currentTab++].style.display = "none";
        showTab(currentTab);
    }
}

async function validateForm() {
    var x,
        y,
        i,
        valid = true;
    x = document.getElementsByClassName("tab");
    y = x[currentTab].getElementsByTagName("input");

    for (i = 0; i < y.length; i++) {
        if (y[i].hasAttribute("required") && !y[i].value) {
            y[i].className += " invalid";
            valid = false;
        } else {
            if (y[i].getAttribute("id") == "verification")
                valid = await verify();
        }
    }
    return valid;
}

function showPassword(e) {
    if ($(e).parent().find("input").attr("type") == "password") {
        $(e).parent().find("input").attr("type", "text");
    } else {
        $(e).parent().find("input").attr("type", "password");
    }
}
