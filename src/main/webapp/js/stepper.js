document.addEventListener('DOMContentLoaded', function () {
  var stepperFormEl = document.querySelector('#stepperForm');
  var stepperForm = new Stepper(stepperFormEl, {
    animation: true
  });

  var btnNextList = [].slice.call(document.querySelectorAll('.btn-next-form'));
  var stepperPanList = [].slice.call(stepperFormEl.querySelectorAll('.bs-stepper-pane'));

  var form = stepperFormEl.querySelector('.bs-stepper-content form');

  // Add event listener for form submission
  form.addEventListener('submit', function (event) {
    event.preventDefault(); // Prevent default form submission behavior

    // Add your form submission logic here
    var formData = new FormData(form); // Get form data
    // You can now send this formData to your server using AJAX or fetch API
    // Example using fetch API:
    fetch('${pageContext.request.contextPath}/registration', {
      method: 'POST',
      body: formData
    })
    .then(response => {
      if (response.ok) {
        // Form submission successful, handle response as needed
        console.log('Form submitted successfully');
        // Optionally, you can navigate to a different page or show a success message
      } else {
        // Form submission failed, handle error response
        console.error('Form submission failed');
        // Optionally, you can display an error message to the user
      }
    })
    .catch(error => {
      // Handle any network or server errors
      console.error('Error during form submission:', error);
      // Optionally, you can display an error message to the user
    });
  });

  // Add event listeners for navigation buttons
  btnNextList.forEach(function (btn) {
    btn.addEventListener('click', function () {
      stepperForm.next();
    });
  });

  stepperFormEl.addEventListener('show.bs-stepper', function (event) {
    form.classList.remove('was-validated');
    var nextStep = event.detail.indexStep;
    var currentStep = nextStep;

    if (currentStep > 0) {
      currentStep--;
    }

    var stepperPan = stepperPanList[currentStep];

    if ((stepperPan.getAttribute('id') === 'user-form'
            && (!inputIdForm.value.length || !inputNameForm.value.length
                || !inputPasswordForm.value.length
                || !inputPasswordVerifiedForm.value.length
                || !inputEmailForm.value.length
                || !inputPhoneNumberForm.value.length))
        || (stepperPan.getAttribute('id') === 'address-form'
            && (!inputZipCodeForm.value.length || !inputAddressForm.value.length
                || !inputDetailedAddressForm.value.length))) {
      event.preventDefault();
      form.classList.add('was-validated');
    }
  });
});
