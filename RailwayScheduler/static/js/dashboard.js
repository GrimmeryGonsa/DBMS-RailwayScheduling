const getItemOffset = (item) => {
  return item.offsetTop;
};

const moveMarker = (offset) => {
  const marker = document.querySelector('.active-marker');
  marker.style.transform = `translateY(${offset}px)`;
  
};

const toggleActive = (e) => {
  e.preventDefault();
  
  // Remove any existing active classes
  const links = document.querySelectorAll('.vertical-menu-item');
  links.forEach((link => link.classList.remove('is-active')));
  
  // Add class to active link
  const activeItem = e.target.parentElement
  activeItem.classList.toggle('is-active');
  const offset = getItemOffset(activeItem);
  moveMarker(offset);
};

// Attach click event listener
const menu = document.querySelector('.vertical-menu');

menu.addEventListener('click', toggleActive);

