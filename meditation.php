<?php
    require_once "admin/includes/functions/config.php";

    if (isset($_GET['meditation'])) {
        $meditationTitle = $_GET['meditation'];
        $meditation_link = ucwords(str_replace("-", " ", $meditationTitle));

        $result = whereQuote("meditations", "meditation_title", "$meditation_link");
        if ($result) {
            $meditations = $result;
        } else {
            echo "false";
            var_dump($result);
        }

        $response = getOtherBooksAsc("meditations", "meditation_title", $meditation_link, "meditation_id", 1);
        if ($response) {
            $othermeditations = $response;
        }

        $response2 = getOtherBooksDesc("meditations", "meditation_title", $meditation_link, "meditation_id", 1);
        if ($response2) {
            $othermeditationsDesc = $response2;
        }
    } else {
        redirect_to("meditations");
    }

    foreach ($meditations as $description_text) {
        $page_description = str_replace("</b>", "'", $description_text['meditation_body']);
        $page_description = trim(preg_replace('/\s+/', ' ', $page_description));
        $page_description = strip_tags($page_description);
        $page_description = substr($page_description, 0, 1000) . "...";
    }

    foreach ($meditations as $image) {
        $page_image = "devotionals/" . $image['meditation_image'];
    }


    $page_name = "Meditations";
    $title = $meditation_link;
    $tagline = "Emmanuel Atoe — Christian Counsellor & Author";
    $extraBodyClasses = '';
    require_once 'inc/header.php';
?>

<?php
    if (!empty($meditations)) {
        foreach ($meditations as $meditation) {
            extract($meditation);

            $meditation_title = str_replace("</b>", "'", $meditation_title);
            $meditation_subtitle = str_replace("</b>", "'", $meditation_subtitle);
            $meditation_body = str_replace("</b>", "'", $meditation_body); ?>

                <section id="devotional-header" class="desktop">
                    <img src="assets/images/devotionals/<?= $meditation_subimage; ?>" alt="<?= $meditation_title; ?>">
                    <img class="shadow" src="assets/images/devotionals/<?= $meditation_subimage; ?>">
                </section>

                <section id="devotional-header" class="mobile">
                    <img src="assets/images/devotionals/<?= $meditation_image; ?>" alt="<?= $meditation_title; ?>">
                    <img class="shadow" src="assets/images/devotionals/<?= $meditation_image; ?>">
                </section>

                <section id="devotional-details">
                    <h1 class="devotional-name"><?= $meditation_title; ?></h1>
                    <div class="devotional-author">
                        <p><span>by </span><?= $meditation_author; ?></p>
                    </div>
                    <p><span>Posted on </span><?= date("D, d M Y", strtotime($datePosted)); ?></p>
                </section>

                <section id="devotional-post">
                    <?= $meditation_body; ?>
                </section>

<?php } } ?>

<?php
    require_once 'inc/footer.php';
?>