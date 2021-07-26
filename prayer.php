<?php
    require_once "admin/includes/functions/config.php";

    if (isset($_GET['prayer'])) {
        $prayerTitle = $_GET['prayer'];
        $prayer_link = ucwords(str_replace("-", " ", $prayerTitle));
        $prayer_link = str_replace("'", "</b>", $prayer_link);

        $result = whereQuote("prayers", "prayer_title", "$prayer_link");
        if ($result) {
            $prayers = $result;
        }

        $response = getOtherBooksAsc("prayers", "prayer_title", $prayer_link, "prayer_id", 1);
        if ($response) {
            $otherprayers = $response;
        }

        $response2 = getOtherBooksDesc("prayers", "prayer_title", $prayer_link, "prayer_id", 1);
        if ($response2) {
            $otherprayersDesc = $response2;
        }
    } else {
        redirect_to("prayers");
    }

    foreach ($prayers as $description_text) {
        $page_description = str_replace("</b>", "'", $description_text['prayer_body']);
        $page_description = trim(preg_replace('/\s+/', ' ', $page_description));
        $page_description = strip_tags($page_description);
        $page_description = substr($page_description, 0, 300) . "...";
    }

    $page_name = "Prayers";
    $title = $prayer_link . " — Emmanuel Atoe";
    $tagline = "Author and Christian Counsellor";
    $extraBodyClasses = '';
    require_once 'inc/header.php';
?>

<?php
    if (!empty($prayers)) {
        foreach ($prayers as $prayer) {
            extract($prayer);

            $prayer_title = str_replace("</b>", "'", $prayer_title);
            $prayer_subtitle = str_replace("</b>", "'", $prayer_subtitle);
            $prayer_body = str_replace("</b>", "'", $prayer_body); ?>
            
                <section id="devotional-details">
                    <h1 class="devotional-name"><?= $prayer_title; ?></h1>
                    <div class="devotional-author">
                        <p><span>by </span><?= $prayer_author; ?></p>
                    </div>
                    <p><span>Posted on </span><?= date("D, d M Y", strtotime($datePosted)); ?></p>
                </section>

                <section id="devotional-post">
                    <?= $prayer_body; ?>
                </section>

<?php } } ?>

<?php
    require_once 'inc/footer.php';
?>