<?php
    $page_name = "Contact";
    $title = 'Contact — Emmanuel Atoe';
    $tagline = "Author and Christian Counsellor";
    $page_description = "Dr. (Pastor) Emmanuel O. Atoe's ministry, through the gifts of the Holy Spirit and the grace of God, has enabled him to motivate, inspire and assist many people by prayer, teaching and counselling.";
    $page_image = "eoatoe/eoatoe.jpg";
    $extraBodyClasses = 'dark contact';
    require_once 'inc/header.php';
?>

<div id="space"></div>

<section id="contact-hero">
    <div class="text animate reveal">
        <h1>Contact Me</h1>
        <img class="svg decor" src="assets/images/icons/decor.svg">
    </div>
</section>

<section id="contacts" class="animated reveal">
    <a href="mailto:hello@eoatoe.com">
        <h1 class="animated reveal">General</h1>
        <p class="animated reveal">hello@eoatoe.com</p>
    </a>
    <a href="mailto:requests@eoatoe.com">
        <h1 class="animated reveal">Prayer Requests</h1>
        <p class="animated reveal">requests@eoatoe.com</p>
    </a>
</section>

<div id="space"></div>

<?php
    require_once 'inc/footer.php';
?>