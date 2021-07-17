<?php
    require_once "admin/includes/functions/config.php";

    $result = fetchAllDesc("prayers", "prayer_id", 0, 6);
    if ($result) {
        $prayers = $result;
    }


    $page_name = "Prayers";
    $title = 'Prayers — Emmanuel Atoe';
    $tagline = "Christian Author & Speaker";
    $page_description = 'Prayers, Prayers & Prophetic Declarations by Emmanuel Atoe, Christian Author & Speaker.';
    $page_image = "eoatoe/eoatoe.jpg";
    $extraBodyClasses = '';
    require_once 'inc/header.php';
?>

<div id="space"></div>
    
<section id="all-devotionals">

    <h1 class="section-title animated reveal">Prayers</h1>
        
    <div class="devotionals" id="devotionals">
        <?php
        if (!empty($prayers)) {
            foreach ($prayers as $prayer) {
                extract($prayer);
                $prayer_title = str_replace("</b>", "'", $prayer_title);
                $prayer_body = str_replace("</b>", "'", $prayer_body);
                $prayer_link = strtolower(str_replace(" ", "-", $prayer_title));
                $prayer_link = str_replace("'", "</b>", $prayer_link);
                $htmltoplaintext = strip_tags($prayer_body);
                ?>


                <div class="devotional" style="opacity: 0;">
                    <a href="prayer?prayer=<?= $prayer_link; ?>" class="image">
                        <img src="assets/images/devotionals/<?= $prayer_image; ?>" alt="">
                        <img class="shadow" src="assets/images/devotionals/<?= $prayer_image; ?>" alt="">
                    </a>

                    <div class="details">
                        <a href="prayer?prayer=<?= $prayer_link; ?>">
                            <h3><?= $prayer_title; ?></h3>
                        </a>
                        <div class="devotional-author">
                            <img src="assets/images/madueke/icon.png" alt="Emmanuel Atoe">
                            <p><span>by </span><?= $prayer_author; ?></p>
                        </div>
                        <div class="devotional-date">
                            <p><span>Posted on </span><?= date("D, d M Y", strtotime($datePosted)); ?></p>
                        </div>
                        <a href="prayer?prayer=<?= $prayer_link; ?>" class="description">
                            <div><?= $htmltoplaintext; ?></div>
                        </a>
                        <a href="prayer?prayer=<?= $prayer_link; ?>" class="btn btn-spaced">
                            <span>Read More</span>
                            <img class="svg" src="assets/images/icons/arrow-right.svg">
                        </a>
                    </div>

                </div>
            <?php } } ?>
    </div>

</section>

<section id="devotional-subscription" class="animated reveal">
    <div class="text">
        <h1>Stay Inspired. Subscribe!</h1>
        <p>Enter your email address to receive notifications of new devotionals, prayers and prophetic declarations sent to you by email.</p>
    </div>

    <form action="https://prayermaduekestore.us15.list-manage.com/subscribe/post?u=a1ded7fdc64b5e8e70cbf9c53&amp;id=7956285b20" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" target="_blank" novalidate>
        <div class="form-inputs">
            <div class="mc-field-group">
                <input type="email" autocomplete="email" required value="" name="EMAIL" class="required email" id="mce-EMAIL" placeholder="eg: johndoe@domain.com">
                <label for="mce-EMAIL">Email Address</label>
            </div>
            <input type="submit" value="Sign me up" name="subscribe" id="mc-embedded-subscribe" class="button">
        </div>
        <div for="mce-EMAIL" class="mce_inline_error" style="display:none;"></div>
        <div id="mce-responses" class="clear">
            <div class="response" id="mce-error-response" style="display:none"></div>
            <div class="response" id="mce-success-response" style="display:none"></div>
        </div>
        <div style="position: absolute; left: -5000px;" aria-hidden="true"><input type="text" name="b_a1ded7fdc64b5e8e70cbf9c53_7956285b20" tabindex="-1" value=""></div>
    </form>
    <script type='text/javascript' src='//s3.amazonaws.com/downloads.mailchimp.com/js/mc-validate.js'></script>
    <script type='text/javascript'>(function($) {window.fnames = new Array(); window.ftypes = new Array();fnames[0]='EMAIL';ftypes[0]='email';fnames[1]='FNAME';ftypes[1]='text';fnames[2]='LNAME';ftypes[2]='text';}(jQuery));var $mcj = jQuery.noConflict(true);</script>
</section>

<script src="inc/polling/js/all_prayers.js"></script>
<?php
    require_once 'inc/footer.php';
?>