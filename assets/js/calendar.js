// Gère l'affichage du calendrier datePiker
$(document).ready(function () {
    $.fn.datepicker.dates['fr'] = {
        days: [
            "Dimanche",
            "Lundi",
            "Mardi",
            "Mercredi",
            "Jeudi",
            "Vendredi",
            "Samedi"
        ],
        daysShort: [
            "Di",
            "Lu",
            "Ma",
            "Me",
            "Je",
            "Ve",
            "Sa"
        ],
        daysMin: [
            "Di",
            "Lu",
            "Ma",
            "Me",
            "Je",
            "Ve",
            "Sa"
        ],
        months: [
            "Janvier",
            "Février",
            "Mars",
            "Avril",
            "Mai",
            "Juin",
            "Juillet",
            "Août",
            "Septembre",
            "Octobre",
            "Novembre",
            "Decembre"
        ],
        monthsShort: [
            "Janv",
            "Fev",
            "Mar",
            "Avr",
            "Mai",
            "Jui",
            "Jui",
            "Aou",
            "Sep",
            "Oct",
            "Nov",
            "Dec"
        ],
        today: "Aujourd'hui",
        clear: "Effacer",
        format: "dd/mm/yyyy",
        titleFormat: "MM yyyy", /* Leverages same syntax as 'format' */
        weekStart: 1
    };

    $('#booking_startDate, #booking_endDate').datepicker({
        datesDisabled: [$('#notAvailableDays').val()],
        startDate: new Date(),
        todayBtn: "linked",
        language: 'fr-FR',
        todayHighlight: true,
        autoclose: true
    });
    $('#booking_startDate, #booking_endDate').on('change', calculateAmount);
    function calculateAmount() { // On récupère les dates
        let endDate = new Date($('#booking_endDate').val().replace(/(\d+)\/(\d+)\/(\d{4})/, '$3-$2-$1'))
        let startDate = new Date($('#booking_startDate').val().replace(/(\d+)\/(\d+)\/(\d{4})/, '$3-$2-$1'))

        if (startDate & endDate && startDate < endDate) {
            const DAY_TIME = 86400000;
            let interval = endDate.getTime() - startDate.getTime();
            let days = interval / DAY_TIME;
            let price = document.querySelector('#notAvailableDays').getAttribute('data-price');
            let amount = days * price;

            $('#days').text(days);
            $('#amount').text(amount.toLocaleString('fr-FR'));
        }
    }
})