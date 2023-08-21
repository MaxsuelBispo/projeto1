const galleryItems = document.querySelectorAll('.gallery-item');
const overlay = document.querySelector('.overlay');
const modalImg = document.getElementById('modal-img');
const closeModal = document.querySelector('.close');

galleryItems.forEach(item => {
    item.addEventListener('click', () => {
        const imgSrc = item.querySelector('img').getAttribute('src');
        modalImg.setAttribute('src', imgSrc);
        overlay.style.display = 'flex';
    });
});

closeModal.addEventListener('click', () => {
    overlay.style.display = 'none';
});

overlay.addEventListener('click', (e) => {
    if (e.target === overlay) {
        overlay.style.display = 'none';
    }
});
