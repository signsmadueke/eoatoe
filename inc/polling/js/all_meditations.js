let meditations = {};
(function () {
    meditations.meditationsAvailable = "";
    //document.getElementById("devotionals").innerHTML = "Put the logo";

    meditations.getAllmeditations = function () {
        fetch(`inc/polling/php/all_meditations`).then(all_meditations => all_meditations).then(all_meditations => all_meditations.text()).then(all_meditations => {
            if (meditations.meditationsAvailable !== all_meditations) {
                document.getElementById("devotionals").innerHTML = all_meditations;
                meditations.meditationsAvailable = all_meditations;
            }
            setTimeout(meditations.getAllmeditations, 2000);
        }).catch((e) => {
            setTimeout(meditations.getAllmeditations, 2000);
        });
    }

    window.addEventListener("load", meditations.getAllmeditations, !false);

})();