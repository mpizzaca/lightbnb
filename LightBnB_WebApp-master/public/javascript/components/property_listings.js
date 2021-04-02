$(() => {

  const $propertyListings = $(`
  <section class="property-listings" id="property-listings">
      <p>Loading...</p>
    </section>
  `);
  window.$propertyListings = $propertyListings;

  window.propertyListings = {};

  function addListing(listing) {
    $propertyListings.append(listing);
  }
  function clearListings() {
    $propertyListings.empty();
  }
  window.propertyListings.clearListings = clearListings;

  function addProperties(properties, isReservation = false) {
    clearListings();
    for (const propertyId in properties) {
      const property = properties[propertyId];
      const listing = propertyListing.createListing(property, isReservation);
      addListing(listing);
    }

    $(function () {
      // setup datepickers
      $('.date_picker').each(function () {
        $(this).datepicker();
      });
      // setup 'Book Me' buttons
      $('.property-listing').each(function() {
        $(this).find('button').first().click(() => {
          $(this).find('.property-listing__book__date-pickers').first().toggle();
        });
      });
    });
  }
  window.propertyListings.addProperties = addProperties;

});