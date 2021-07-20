// WORLD BRAIN TECHNOLOGY
//
// This program was directly written by WORLD BRAIN TECHNOLOGY
// CEO - Godson Pius
// Program Director - Godson Pius
// Department - PHP Department
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

let prayers = {};
(function () {
    prayers.prayersAvailable = "";

    prayers.getAllPrayers = function () {
        fetch(`polling/php/all_prayers`).then(all_prayers => all_prayers).then(all_prayers => all_prayers.text()).then(all_prayers => {
            if (prayers.prayersAvailable !== all_prayers) {
                document.getElementById("all_prayers").innerHTML = all_prayers;
                prayers.prayersAvailable = all_prayers;
                // window.scrollTo(0, document.body.scrollHeight);
            }
            setTimeout(prayers.getAllPrayers, 2000);
        }).catch((e) => {
            setTimeout(prayers.getAllPrayers, 2000);
        });
    }

    window.addEventListener("load", prayers.getAllPrayers, !false);

})();

const delete_prayer = element => {
    let confirm_delete = confirm("Do you really delete this prayer?");

    if (confirm_delete) {
        toastr.info("Please Wait!", "Processing");
        let prayerId = element.dataset.id;
        fetch(`polling/php/delete?prayer_id=${prayerId}`).then(d => d).then(d => d.text()).then(d => {
            if (d === "true") {
                toastr.success("Prayer have been deleted successfully!", "Prayer Deleted");
            } else if (d === "false") {
                toastr.error("Failed to delete!", "Failed");
            } else {
                toastr.error("Server Error!", "Error");
            }
        }).catch((e) => {
            toastr.error("Please Check your connection and try again!", "Network Error");
        });
    }
};