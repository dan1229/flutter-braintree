function payment(auth){
    var button = document.querySelector('submit-button');
    console.log(auth);
    console.log(button);
    braintree.dropin.create({
      authorization: auth,
      container: 'dropin-container'
    }, function (createErr, instance) {
        console.log(createErr);
        console.log(instance);
         button.addEventListener('click', function () {
            instance.requestPaymentMethod(function (requestPaymentMethodErr, payload) {
              // Submit payload.nonce to your server
              return payload.nonce
            });
         });
    });
}
