<?php
    require_once "admin/includes/functions/config.php";

    if (isset($_GET['counsel'])) {
        $counselTitle = $_GET['counsel'];
        $counsel_link = ucwords(str_replace("-", " ", $counselTitle));
        $counsel_link = str_replace("'", "</b>", $counsel_link);

        $result = whereQuote("counselling", "counsel_title", "$counsel_link");
        if ($result) {
            $counselling = $result;
        }

        $response = getOtherBooksAsc("counselling", "counsel_title", $counsel_link, "counsel_id", 1);
        if ($response) {
            $othercounselling = $response;
        }

        $response2 = getOtherBooksDesc("counselling", "counsel_title", $counsel_link, "counsel_id", 1);
        if ($response2) {
            $othercounsellingDesc = $response2;
        }
    } else {
        redirect_to("counselling");
    }

    foreach ($counselling as $description_text) {
        $page_description = str_replace("</b>", "'", $description_text['counsel_body']);
        $page_description = trim(preg_replace('/\s+/', ' ', $page_description));
        $page_description = strip_tags($page_description);
        $page_description = substr($page_description, 0, 300) . "...";
    }


    $page_name = "Counselling";
    $title = $counsel_link . " — Emmanuel Atoe";
    $tagline = "Author and Christian Counsellor";
    $extraBodyClasses = '';
    require_once 'inc/header.php';
?>

<?php
    if (!empty($counselling)) {
        foreach ($counselling as $counsel) {
            extract($counsel);

            $counsel_title = str_replace("</b>", "'", $counsel_title);
            $counsel_subtitle = str_replace("</b>", "'", $counsel_subtitle);
            $counsel_body = str_replace("</b>", "'", $counsel_body); ?>
            
                <section id="devotional-details">
                    <h1 class="devotional-name"><?= $counsel_title; ?></h1>
                    <div class="devotional-author">
                        <p><span>by </span><?= $counsel_author; ?></p>
                    </div>
                    <p><span>Posted on </span><?= date("D, d M Y", strtotime($datePosted)); ?></p>
                </section>

                <section id="devotional-post">
                    <?= $counsel_body; ?>
                </section>

<?php } } ?>

<?php
    require_once 'inc/footer.php';
?>