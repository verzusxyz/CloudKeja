 <div class="modal fade" id="veryfy-email-modal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
     aria-labelledby="staticBackdropLabel" aria-hidden="true">
     <div class="modal-dialog modal-dialog-centered">
         <div class="modal-content verify-content">
             <div class="modal-header align-items-start border-bottom-0">
                 <div class="verification-header">
                     <h4>{{ __('Verification') }}</h4>
                     <p class="des p-8-0 pb-3 pt-1">
                         {{ __('6-digits pin has been sent to your email address') }} :<span
                             class="dynamicEmail"></span>
                     </p>
                 </div>
                 <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
             </div>
             <div class="modal-body verify-modal-body  text-center">

                 <form action="{{ route('signup.submitOtp') }}" method="post" class="verify_form">
                     @csrf
                     <div class="code-input pin-container">
                         <input class="pin-input otp-input" id="pin-1" type="number" name="otp[]" maxlength="1">
                         <input class="pin-input otp-input" id="pin-2" type="number" name="otp[]" maxlength="1">
                         <input class="pin-input otp-input" id="pin-3" type="number" name="otp[]" maxlength="1">
                         <input class="pin-input otp-input" id="pin-4" type="number" name="otp[]" maxlength="1">
                         <input class="pin-input otp-input" id="pin-5" type="number" name="otp[]" maxlength="1">
                         <input class="pin-input otp-input" id="pin-6" type="number" name="otp[]" maxlength="1">
                     </div>

                     <p class="des p-24-0 pt-4 resend-otp">
                         {{ __('Code send in') }} <span id="countdown" class="countdown"></span>
                         <span class="reset cursor-pointer otp-resend-btn" id="otp-resend"
                             data-route="{{ route('signup.otpResend') }}">{{ __('Resend code') }}</span>
                     </p>
                     <button class="btn theme-btn submit-btn verify-btn  btn-outline-danger mt-4 "> {{__('Verify')}} </button>
                 </form>
             </div>
         </div>
     </div>
 </div>

 <!-- success Modal Start -->
 <div class="modal fade" id="successmodal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
     aria-labelledby="staticBackdropLabel" aria-hidden="true">
     <div class="modal-dialog modal-dialog-centered">
         <div class="modal-content success-content">
             <div class="modal-header border-bottom-0">
                 <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
             </div>
             <div class="modal-body success-modal-body text-center">
                 <img src="{{ asset('backend/assets/img/icon/thankyou.svg') }}" alt="">
                 <h4>{{ __('Successfully!') }}</h4>
                 <p>{{ __('Congratulations, Your account has been') }} <br> {{ __('successfully created') }}</p>
             </div>
         </div>
     </div>
 </div>
 <!--success Modal end -->
