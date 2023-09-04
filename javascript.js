var images = document.querySelectorAll(".gallery img");
var modal = document.getElementById("myModal");
var modalImg = document.getElementById("modalImage");
var currentIndex = 0;

function openImage(image) {
    modal.style.display = "block";
    modalImg.src = image.src;
    currentIndex = Array.from(images).indexOf(image);
}

function closeImage() {
    modal.style.display = "none";
}

function prevImage() {
    currentIndex--;
    if (currentIndex < 0) {
        currentIndex = images.length - 1;
    }
    modalImg.src = images[currentIndex].src;
}

function nextImage() {
    currentIndex++;
    if (currentIndex >= images.length) {
        currentIndex = 0;
    }
    modalImg.src = images[currentIndex].src;
}
