document.addEventListener('DOMContentLoaded', () => {
    console.log('Portfolio loaded successfully!');
  });
document.getElementById('contactForm').addEventListener('submit', async (e) => {
    e.preventDefault();
  
    const form = e.target;
    const formData = new FormData(form);
    
    try {
      const response = await fetch('https://formspree.io/f/mqaagqly', {
        method: 'POST',
        body: formData,
        headers: {
          Accept: 'application/json',
        },
      });
  
      if (response.ok) {
        document.getElementById('formResponse').textContent = 'Message sent successfully!';
        form.reset();
      } else {
        document.getElementById('formResponse').textContent = 'Failed to send the message. Please try again.';
      }
    } catch (error) {
      document.getElementById('formResponse').textContent = 'An error occurred. Please try again.';
    }
  });
  