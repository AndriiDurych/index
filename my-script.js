const firstParagraph = document.querySelector("p");

document.addEventListener("DOMContentLoaded", () => {
    const block = document.getElementById("colorTextBlock");
    const addElementButton = document.getElementById("addElementButton");
    const container = document.getElementById("container");

    const colorTextOptions = [
        { color: "red", text: "Червона змія" },
        { color: "green", text: "Зелена змія" },
        { color: "blue", text: "Синя змія" }
    ];

    let currentIndex = 0;

    block.addEventListener("click", () => {
        currentIndex = (currentIndex + 1) % colorTextOptions.length;
        const { color, text } = colorTextOptions[currentIndex];
        block.style.backgroundColor = color;
        block.textContent = text;
    });

    addElementButton.addEventListener("click", () => {
        const newElement = document.createElement("div");
        newElement.className = "new-element";
        newElement.textContent = "Ще одна змія";
        container.appendChild(newElement);
    });
});