<?php
    $page_name = "About";
    $title = 'About — Emmanuel Atoe';
    $tagline = "Christian Author & Speaker";
    $page_description = 'A leading christian author, speaker, and expert on spiritual warfare and deliverance. His 100+ books cover every area of successful christian living.';
    $page_image = "eoatoe/eoatoe.jpg";
    $extraBodyClasses = 'dark about';
    require_once 'inc/header.php';
?>

<div id="space"></div>

<section id="about-hero">
    <div class="text animate reveal">
        <h1>about Me</h1>
        <img class="svg decor" src="assets/images/icons/decor.svg">
    </div>
</section>

<section id="abouts" class="animated reveal">
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