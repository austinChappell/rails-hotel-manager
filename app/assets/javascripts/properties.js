document.addEventListener("DOMContentLoaded", function () {
  let propertyOffset = 0;
  const properties = document.querySelectorAll('.property');
  const prevPropBtn = document.querySelector('.properties-index .prev-arrow');
  const nextPropBtn = document.querySelector('.properties-index .next-arrow');
  
  for (let i = 0; i < properties.length; i++) {
    properties[i].style.left = `${propertyOffset}%`;
    properties[i].addEventListener('click', (evt) => {
      if (evt.target.tagName !== 'A') {
        properties[i].children[0].children[0].click();
      }
    })
  }

  const moveProperties = (direction) => {
    const diff = 100 * direction;
    propertyOffset = propertyOffset - diff;
    for (let i = 0; i < properties.length; i++) {
      properties[i].style.left = `${propertyOffset}%`;
    }
  }

  const slideProperties = (direction) => {
    // if prev
    if (direction === -1) {
      if (properties[0].style.left !== '0%') {
        console.log('move to prev')
        moveProperties(direction);
      }
    }

    // if next
    if (direction === 1) {
      const maxPercent = (properties.length - 1) * 100;
      if (properties[0].style.left !== `-${maxPercent}%`) {
        console.log('move to next')
        moveProperties(direction);
      }
    }
  }

  prevPropBtn.addEventListener('click', () => {
    console.log('clicked prev button');
    slideProperties(-1);
  });

  nextPropBtn.addEventListener('click', () => {
    console.log('clicked next button');
    slideProperties(1);
  });

});
