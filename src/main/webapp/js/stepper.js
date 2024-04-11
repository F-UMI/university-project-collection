document.addEventListener('DOMContentLoaded', function () {
  var stepperFormEl = document.querySelector('#stepperForm')
  var stepperForm = new Stepper(stepperFormEl, {
    animation: true
  })

  var btnNextList = [].slice.call(document.querySelectorAll('.btn-next-form'))
  var stepperPanList = [].slice.call(
      stepperFormEl.querySelectorAll('.bs-stepper-pane'))

  /*Page 1*/
  var inputIdForm = document.getElementById('inputIdForm')
  var inputPasswordForm = document.getElementById('inputPasswordForm')
  var inputPasswordVerifiedForm = document.getElementById(
      'inputPasswordVerifiedForm')
  var inputNameForm = document.getElementById('inputNameForm')
  var inputEmailForm = document.getElementById('inputEmailForm')
  var inputPhoneNumberForm = document.getElementById('inputPhoneNumberForm')

  /*Page 2*/
  var inputZipCodeForm = document.getElementById('inputZipCodeForm')
  var inputAddressForm = document.getElementById('inputAddressForm')
  var inputDetailedAddressForm = document.getElementById(
      'inputDetailedAddressForm')

  var form = stepperFormEl.querySelector('.bs-stepper-content form')

  btnNextList.forEach(function (btn) {
    btn.addEventListener('click', function () {
      stepperForm.next()
    })
  })

  stepperFormEl.addEventListener('show.bs-stepper', function (event) {
    form.classList.remove('was-validated')
    var nextStep = event.detail.indexStep
    var currentStep = nextStep

    if (currentStep > 0) {
      currentStep--
    }

    var stepperPan = stepperPanList[currentStep]

    if ((stepperPan.getAttribute('id') === 'user-form'
            && (!inputIdForm.value.length || !inputNameForm.value.length
                || !inputPasswordForm.value.length
                || !inputPasswordVerifiedForm.value.length
                || !inputEmailForm.value.length
                || !inputPhoneNumberForm.value.length))
        || (stepperPan.getAttribute('id') === 'address-form'
            && (!inputZipCodeForm.value.length || !inputAddressForm.value.length
                || !inputDetailedAddressForm.value.length))) {
      event.preventDefault()
      form.classList.add('was-validated')
    }
  })
})