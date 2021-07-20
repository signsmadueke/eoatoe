// WORLD BRAIN TECHNOLOGY
//
// This program was directly written by WORLD BRAIN TECHNOLOGY
// CEO - Godson Pius
// Program Director - Godson Pius
// Department - PHP Department
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

(function () {
    document.getElementById("edit_meditation").addEventListener("submit", function (e) {
        e.preventDefault();
        document.getElementById("submit_btn").innerHTML = "<i class='icon-refresh'></i> Please Wait";
        document.getElementById("submit_btn").className = "btn btn-warning";
        let meditation_id = document.getElementById("meditationId").dataset.id;
        let form_inputs = new FormData(e.currentTarget);

        fetch(`polling/php/edit?meditation_id=${meditation_id}`, {
            method: "post",
            body: form_inputs
        }).then(d => d).then(d => d.text()).then(d => {
            if (d === "true") {
                toastr.success("Meditation edited successfully!", "Meditation Edited");
                document.getElementById("submit_btn").innerHTML = "<i class='icon-note'></i> Edit Meditation";
                document.getElementById("submit_btn").className = "btn btn-success";
            } else {
                let errors = JSON.parse(d);
                toastr.error(errors, "Operation Failed");
                document.getElementById("submit_btn").innerHTML = "<i class='ft-alert-circle'></i> Try Again";
                document.getElementById("submit_btn").className = "btn btn-danger";
            }
        }).catch((e) => {
            toastr.error("Please Check your connection and try again!", "Network Error");
            document.getElementById("submit_btn").innerHTML = "<i class='icon-note'></i> Edit Meditation";
            document.getElementById("submit_btn").className = "btn btn-success";
        });
    });
})();