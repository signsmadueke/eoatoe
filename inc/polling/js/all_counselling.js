let counselling = {};
(function () {
    counselling.counsellingAvailable = "";
    //document.getElementById("devotionals").innerHTML = "Put the logo";

    counselling.getAllcounselling = function () {
        fetch(`inc/polling/php/all_counselling`).then(all_counselling => all_counselling).then(all_counselling => all_counselling.text()).then(all_counselling => {
            if (counselling.counsellingAvailable !== all_counselling) {
                document.getElementById("devotionals").innerHTML = all_counselling;
                counselling.counsellingAvailable = all_counselling;
            }
            setTimeout(counselling.getAllcounselling, 2000);
        }).catch((e) => {
            setTimeout(counselling.getAllcounselling, 2000);
        });
    }

    window.addEventListener("load", counselling.getAllcounselling, !false);

})();