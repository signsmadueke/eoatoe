let prayers = {};
(function () {
    prayers.prayersAvailable = "";
    //document.getElementById("devotionals").innerHTML = "Put the logo";

    prayers.getAllprayers = function () {
        fetch(`inc/polling/php/all_prayers`).then(all_prayers => all_prayers).then(all_prayers => all_prayers.text()).then(all_prayers => {
            if (prayers.prayersAvailable !== all_prayers) {
                document.getElementById("devotionals").innerHTML = all_prayers;
                prayers.prayersAvailable = all_prayers;
            }
            setTimeout(prayers.getAllprayers, 2000);
        }).catch((e) => {
            setTimeout(prayers.getAllprayers, 2000);
        });
    }

    window.addEventListener("load", prayers.getAllprayers, !false);

})();