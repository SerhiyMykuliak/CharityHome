document.addEventListener("turbo:load", function() {
  if (document.querySelector("#donation-form")) {
    var stripe = Stripe(window.stripePublishableKey);

    var elements = stripe.elements();

    var card = elements.create('card');
    card.mount('#card-element');

    var form = document.getElementById('donation-form');
    form.addEventListener('submit', function(event) {
      event.preventDefault();
      
      stripe.createToken(card).then(function(result) {
        if (result.error) {
          var errorElement = document.getElementById('card-errors');
          errorElement.textContent = result.error.message;
        } else {
          stripeTokenHandler(result.token);
        }
      });
    });

    function stripeTokenHandler(token) {
      var form = document.getElementById('donation-form');
      var hiddenInput = document.createElement('input');
      hiddenInput.setAttribute('type', 'hidden');
      hiddenInput.setAttribute('name', 'stripeToken');
      hiddenInput.setAttribute('value', token.id);
      form.appendChild(hiddenInput);
      
      form.submit();
    }
  }
});