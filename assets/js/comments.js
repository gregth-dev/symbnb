// Gère l'affichage dynamique des notes de commentaire
$(document).ready(function () {
    $('.rate i').on('click', rating);
    function rating(e) {
        let rate = 0;
        let position = e.target.id.charAt((e.target.id.length - 1));
        for (let i = 1; i <= 5; i++) {
            let star = document.querySelector(`#star${i}`);
            if (i <= position) {
                changeStyle(star, "goldenrod", "far", "fas");
                rate++;
            } else
                changeStyle(star, "black", "fas", "far");
        }
        let field = document.querySelector('#comment_rating');
        field.setAttribute('value', rate);
    }

    function changeStyle(cible, color, startClass, endClass) {
        cible.style.color = color;
        cible.classList.replace(startClass, endClass);
    }
})