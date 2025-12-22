$(document).ready(function () {
    function fillup(email, password) {
        $("#email").val(email);
        $("#password").val(password);
    }

    $(".dynamic-btn").on("click", function () {
        const matches = $(this)
            .attr("onclick")
            .match(/'([^']+)'/g);
        const email = matches[0].replace(/'/g, "");
        const password = matches[1].replace(/'/g, "");

        fillup(email, password);
    });
});

// sign up form
let $sign_up_form = $(".user_create_form");
$sign_up_form.initFormValidation(),
    $(document).on("submit", ".user_create_form", function (e) {
        e.preventDefault();
        let t = $(this).find(".submit-btn"),
            a = t.html();
        $sign_up_form.valid() &&
            $.ajax({
                type: "POST",
                url: this.action,
                data: new FormData(this),
                dataType: "json",
                contentType: false,
                cache: false,
                processData: false,
                beforeSend: function () {
                    t.html($savingLoader)
                        .addClass("disabled")
                        .attr("disabled", !0);
                },
                success: function (response) {
                    t.html(a).removeClass("disabled").attr("disabled", false);
                    $(".dynamicEmail").text(response.email);
                    $("#veryfy-email-modal").modal("show");
                    startCountdown(response.otp_expiration);
                },
                error: function (e) {
                    t.html(a).removeClass("disabled").attr("disabled", !1),
                        showInputErrors(e.responseJSON),
                        Notify("error", e);
                },
            });
    });

function startCountdown(expirationTime) {
    const $countdownElement = $("#countdown");
    const $resendButton = $("#otp-resend");

    let remainingTime = expirationTime;
    $resendButton.css({ "pointer-events": "none", opacity: "0.5" });

    const interval = setInterval(() => {
        const minutes = Math.floor(remainingTime / 60);
        const seconds = remainingTime % 60;

        $countdownElement.text(
            `${minutes}:${seconds < 10 ? "0" : ""}${seconds}`
        );
        remainingTime--;
        if (remainingTime < 0) {
            clearInterval(interval);
            $countdownElement.text("");
            $resendButton.css({ "pointer-events": "auto", opacity: "1" });
        }
    }, 1000);
}

// Verify OTP submission
let $verify_form = $(".verify_form");
$verify_form.initFormValidation();

$(document).on("submit", ".verify_form", function (e) {
    e.preventDefault();

    let t = $(this).find(".submit-btn"),
        a = t.html();

    const email = $(".dynamicEmail").text();

    // Get the OTP input values from the form
    const otpInputs = $(this).find(".otp-input");
    let otpValues = otpInputs
        .map(function () {
            return $(this).val();
        })
        .get()
        .join("");

    // Validate OTP and form before submitting
    if ($verify_form.valid()) {
        let formData = new FormData(this);
        formData.append("email", email);
        formData.append("otp", otpValues);

        $.ajax({
            type: "POST",
            url: this.action,
            data: formData,
            dataType: "json",
            contentType: false,
            cache: false,
            processData: false,
            beforeSend: function () {
                t.html($savingLoader).addClass("disabled").attr("disabled", !0);
            },

            success: function (response) {
                t.html(a).removeClass("disabled").attr("disabled", false);
                $("#verifymodal").modal("hide");

                if (response.redirect) {
                    $("#successmodal").modal("show");

                    setTimeout(function () {
                        window.location.href = response.redirect;
                    }, 3000);
                } else {
                    $("#successmodal").modal("show");
                }
            },
            error: function (response) {
                t.html(a).removeClass("disabled").attr("disabled", false);
                toastr.error(response.responseJSON.error);
            },
        });
    } else {
        toastr.error("Please enter all OTP digits.");
    }
});

// OTP input field--------------------->
const pinInputs = document.querySelectorAll(".pin-input");

pinInputs.forEach((inputField, index) => {
    inputField.addEventListener("input", () => {
        inputField.value = inputField.value.replace(/[^0-9]/g, "").slice(0, 1);

        if (inputField.value && index < pinInputs.length - 1) {
            pinInputs[index + 1].focus();
        }
    });

    inputField.addEventListener("keydown", (e) => {
        if (e.key === "Backspace" && !inputField.value && index > 0) {
            pinInputs[index - 1].focus();
        }
    });

    inputField.addEventListener("paste", (e) => {
        e.preventDefault();
    });
});

$(document).on("click", ".otp-resend-btn", function () {
    let route = $(this).data("route");
    const email = $(".dynamicEmail").text();

    $.ajax({
        url: route,
        method: "POST",
        data: {
            email: email,
        },
        success: function (response) {
            if (response.otp_expiration) {
                startCountdown(response.otp_expiration);
            }
        },
        error: function (e) {
            showInputErrors(e.responseJSON), Notify("error", e);
        },
    });
});

function showInputErrors(e) {
    if (e.errors !== undefined) {
        $.each(e.errors, function (field, message) {
            $("#" + field + "-error").remove();

            let errorLabel = `
                <label id="${field}-error" class="error" for="${field}">${message}</label>
            `;

            $("#" + field)
                .parents()
                .hasClass("form-check")
                ? $("#" + field)
                      .parents()
                      .find(".form-check")
                      .append(errorLabel)
                : $("#" + field)
                      .addClass("error")
                      .after(errorLabel);
        });
    }
}

function ajaxSuccess(response, Notify) {
    if (response.redirect) {
        if (response.message) {
            window.sessionStorage.hasPreviousMessage = true;
            window.sessionStorage.previousMessage = response.message ?? null;
        }

        location.href = response.redirect;
    } else if (response.message) {
        Notify("success", response);
    }
}

$(document).on('click', '.hide-pass', function () {
    $(this).toggleClass('show-pass');

    var input = $(this).closest('.input-group').find('input');

    if (input.attr('type') === 'password') {
        input.attr('type', 'text');
    } else {
        input.attr('type', 'password');
    }
});

document.addEventListener("DOMContentLoaded", function () {
    const roleButtons = document.querySelectorAll(".login-role-btn");

    roleButtons.forEach((button) => {
        button.addEventListener("click", function () {
            roleButtons.forEach((btn) => btn.classList.remove("selected"));

            this.classList.add("selected");

            const email = this.getAttribute("data-email");
            const role = this.getAttribute("data-role");
            fillup(email, role);
        });
    });
});
