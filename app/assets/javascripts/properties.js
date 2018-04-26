document.addEventListener("DOMContentLoaded", function () {
  const properties = document.querySelectorAll('.property');

  for (let i = 0; i < properties.length; i++) {
    properties[i].addEventListener('click', (evt) => {
      if (evt.target.tagName !== 'A') {
        properties[i].children[0].children[0].click();
      }
    })
  }

});
