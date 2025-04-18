document.addEventListener('mousedown', function(event) {
  // Mouse Side Button 4 (Back)
  if (event.buttons === 8) {
    window.history.back();
    event.preventDefault();
  }
  // Mouse Side Button 5 (Forward)
  else if (event.buttons === 16) {
    window.history.forward();
    event.preventDefault();
  }
}, true);

// Some websites may block mousedown events
// Adding auxclick event as well (supported in modern browsers)
document.addEventListener('auxclick', function(event) {
  if (event.button === 8) {
    window.history.back();
    event.preventDefault();
  }
  else if (event.button === 16) {
    window.history.forward();
    event.preventDefault();
  }
}, true);

console.log('Mouse Button Navigation extension loaded');
