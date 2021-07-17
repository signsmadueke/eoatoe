<?php

require_once "../../../admin/includes/functions/config.php";

$result = fetchAll("meditations", "meditation_id");

if ($result) {
    $meditations = $result;
}

?>

<?php
if (!empty($meditations)) {
    foreach ($meditations as $meditation) {
        extract($meditation);
        $meditation_title = str_replace("</b>", "'", $meditation_title);
        $meditation_body = str_replace("</b>", "'", $meditation_body);
        $meditation_link = strtolower(str_replace(" ", "-", $meditation_title));
        $meditation_link = str_replace("'", "</b>", $meditation_link);
        $htmltoplaintext = strip_tags($meditation_body);
        ?>


        <div class="devotional animated reveal">
            <a href="meditation?meditation=<?= $meditation_link; ?>" class="image">
                <img src="assets/images/devotionals/<?= $meditation_image; ?>" alt="">
                <img class="shadow" src="assets/images/meditations/<?= $meditation_image; ?>" alt="">
            </a>

            <div class="details">
                <a href="meditation?meditation=<?= $meditation_link; ?>">
                    <h3><?= $meditation_title; ?></h3>
                </a>
                <div class="devotional-author">
                    <img src="assets/images/madueke/icon.png" alt="Emmanuel Atoe">
                    <p><span>by </span><?= $meditation_author; ?></p>
                </div>
                <div class="devotional-date">
                    <p><span>Posted on </span><?= date("D, d M Y", strtotime($datePosted)); ?></p>
                </div>
                <a href="meditation?meditation=<?= $meditation_link; ?>" class="description">
                    <div><?= $htmltoplaintext; ?></div>
                </a>
                <a href="meditation?meditation=<?= $meditation_link; ?>" class="btn btn-chevron">
                    <span>Read meditation</span>
                    <svg xmlns="http://www.w3.org/2000/svg" width="7" height="11" viewBox="0 0 7 11" fill="none" class="svg replaced-svg">
                        <path d="M1.52395 10.917C1.40956 11.0277 1.22409 11.0277 1.1097 10.917L0.0857946 9.92607C-0.028598 9.81536 -0.028598 9.63587 0.0857946 9.52517L4.24502 5.5L0.0857946 1.47484C-0.0285979 1.36413 -0.0285983 1.18464 0.0857941 1.07394L1.1097 0.0830293C1.22409 -0.0276765 1.40956 -0.0276764 1.52395 0.0830293L6.91421 5.29955C7.0286 5.41026 7.0286 5.58975 6.91421 5.70045L1.52395 10.917Z" fill="#444444"></path>
                    </svg>
                </a>
            </div>

        </div>
    <?php } } ?>

<script src="inc/polling/js/all_meditations.js"></script>
