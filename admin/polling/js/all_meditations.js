// WORLD BRAIN TECHNOLOGY
//
// This program was directly written by WORLD BRAIN TECHNOLOGY
// CEO - Godson Pius
// Program Director - Godson Pius
// Department - PHP Department
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

let meditations = {};
(function () {
    meditations.meditationsAvailable = "";

    meditations.getAllmeditations = function () {
        fetch(`polling/php/all_meditations`).then(all_meditations => all_meditations).then(all_meditations => all_meditations.text()).then(all_meditations => {
            if (meditations.meditationsAvailable !== all_meditations) {
                document.getElementById("all_meditations").innerHTML = all_meditations;
                meditations.meditationsAvailable = all_meditations;
                // window.scrollTo(0, document.body.scrollHeight);
            }
            setTimeout(meditations.getAllmeditations, 2000);
        }).catch((e) => {
            setTimeout(meditations.getAllmeditations, 2000);
        });
    }

    window.addEventListener("load", meditations.getAllmeditations, !false);

})();

const delete_devotion = element => {
    let confirm_delete = confirm("Do you really delete this devotion?");

    if (confirm_delete) {
        toastr.info("Please Wait!", "Processing");
        let devotionId = element.dataset.id;
        fetch(`polling/php/delete?devotion_id=${devotionId}`).then(d => d).then(d => d.text()).then(d => {
            if (d === "true") {
                toastr.success("Devotion have been deleted successfully!", "Devotion Deleted");
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