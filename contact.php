<?php
    $page_name = "Contact";
    $title = 'Contact — Emmanuel Atoe';
    $tagline = "Author and Christian Counsellor";
    $page_description = "Dr. (Pastor) Emmanuel O. Atoe's ministry, through the gifts of the Holy Spirit and the grace of God, has enabled him to motivate, inspire and assist many people by prayer, teaching and counselling.";
    $page_image = "eoatoe/eoatoe.jpg";
    $extraBodyClasses = 'contact';
    require_once 'inc/header.php';
?>

<div id="space"></div>

<section id="contact-hero">
    <div class="text animate reveal">
        <h1>Contact Me</h1>
        <img class="svg decor" src="assets/images/icons/decor.svg">
    </div>
</section>

<div id="space"></div>

<section id="contacts" class="animated reveal">
    <a href="mailto:hello@eoatoe.com?subject=Hello%20Emmanuel%20Atoe&body=My%20name%20is%3A%0D%0A%0D%0AI%20would%20like%20us%20to%20talk%20about%3A">
        <h1 class="animated reveal">General</h1>
        <p class="animated reveal">hello@eoatoe.com</p>
    </a>
    <a href="mailto:invite-speaker@eoatoe.com?subject=Book%20Emmanuel%20Atoe&body=I%20would%20like%20to%20contact%20Dr.%20Pastor%20Emmanuel%20Atoe%20about%20coming%20to%20minister%20in%20my%20church%20or%20conference.%0D%0A%0D%0AMy%20name%20is%3A%0D%0A%0D%0AMy%20Phone%20Number%20is%3A">
        <h1 class="animated reveal">Conference Invitations</h1>
        <p class="animated reveal">invite-speaker@eoatoe.com</p>
    </a>
</section>

<div id="space"></div>

<?php
    require_once 'inc/footer.php';
?>