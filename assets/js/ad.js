// On récupère le numéro des futurs champs qui vont être créés
let index = $('#ad_images div.form-group').length;
$('#add-image').click(() => { // On récupère le prototype des entrées
    const tmpl = $('#ad_images').data('prototype').replace(/__name__/g, index);
    index++;
    // On injecte ce code au sein de la div
    $('#ad_images').append(tmpl);
    // On gère le bouton supprimer
    handleDeleteButtons();
})
handleDeleteButtons();

function handleDeleteButtons() {
    $('button[data-action="delete"]').click(function () {
        const target = this.dataset.target;
        // On supprime l'ensemble de l'élément
        document.querySelector(`${target}`).parentNode.remove();
    })
}