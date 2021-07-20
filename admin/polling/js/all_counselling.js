// WORLD BRAIN TECHNOLOGY
//
// This program was directly written by WORLD BRAIN TECHNOLOGY
// CEO - Godson Pius
// Program Director - Godson Pius
// Department - PHP Department
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

let counselling = {};
(function () {
    counselling.counsellingAvailable = "";

    counselling.getAllCounselling = function () {
        fetch(`polling/php/all_counselling`).then(all_counselling => all_counselling).then(all_counselling => all_counselling.text()).then(all_counselling => {
            if (counselling.counsellingAvailable !== all_counselling) {
                document.getElementById("all_counselling").innerHTML = all_counselling;
                counselling.counsellingAvailable = all_counselling;
                // window.scrollTo(0, document.body.scrollHeight);
            }
            setTimeout(counselling.getAllCounselling, 2000);
        }).catch((e) => {
            setTimeout(counselling.getAllCounselling, 2000);
        });
    }

    window.addEventListener("load", counselling.getAllCounselling, !false);

})();

const delete_counsel = element => {
    let confirm_delete = confirm("Do you really delete this counsel?");

    if (confirm_delete) {
        toastr.info("Please Wait!", "Processing");
        let counselId = element.dataset.id;
        fetch(`polling/php/delete?counsel_id=${counselId}`).then(d => d).then(d => d.text()).then(d => {
            if (d === "true") {
                toastr.success("Counsel have been deleted successfully!", "Counsel Deleted");
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