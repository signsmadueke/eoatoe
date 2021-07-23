<!DOCTYPE html>
<html lang="en">

<head>
    <title><?php echo $title; ?>, <?php echo $tagline; ?></title>
    <meta charset="UTF-8">
    <meta name="viewport" content="height=device-height, width=device-width, initial-scale=1, viewport-fit=cover">
    <meta name="author" content="Emmanuel Atoe">
    <meta name="description" content="<?= $page_description; ?>">
    <meta name="keywords" content="Emmanuel Atoe, Emmanuel Atoe, Christian Author, Christian, Author, Amazon, Religion, Spirituality, christianbook, devotion, faith, olukoya, prayer, Emmanuel Atoe, prayer rain, blessing prayer, prayer book, spiritual exercises.">
    <meta name="robots" content="index, follow">
    <meta name="googlebot" content="index, follow, max-snippet:-1, max-image-preview:large, max-video-preview:-1">
    <meta name="bingbot" content="index, follow, max-snippet:-1, max-image-preview:large, max-video-preview:-1">

    <!-- Stylesheets -->
    <link rel="stylesheet" href="assets/css/styles.css"/>

    <link rel="icon" href="favicon.png">
    <link rel="apple-touch-icon" sizes="120x120" href="favicon.png" />
    <link rel="apple-touch-icon" sizes="152x152" href="favicon.png" />
    <meta name="theme-color" content="#000000">
</head>

<body class="container <?php echo $extraBodyClasses; ?>">
<section id="navigation">
    <div id="logo">
        <a href="/">
            <div class="logo-text">
                <h3 class="logo-name">Emmanuel Atoe</h3>
                <p class="logo-tagline">Christian Counsellor & Author</p>
            </div>
        </a>
    </div>

    <div class="nav-space"></div>

    <nav>
        <ul>
            <li class="<?php if ($page_name == "Home"){echo "active";} ?>">
                <a href="/">Home</a>
            </li>
            <li class="<?php if ($page_name == "Books"){echo "active";} ?>">
                <a href="books">Books</a>
            </li>
            <!-- <li class="<?php if ($page_name == "Free Gift"){echo "active";} ?>">
                <a href="free-gift.php">Free Gift</a>
            </li> -->
            <!-- <li class="<?php if ($page_name == "Podcasts"){echo "active";} ?>">
                <a href="podcasts">Podcasts</a>
            </li> -->
            <li class="<?php if ($page_name == "Meditations"){echo "active";} ?>">
                <a href="meditations">Meditations</a>
            </li>
            <li class="<?php if ($page_name == "Prayers"){echo "active";} ?>">
                <a href="prayers">Prayers</a>
            </li>
            <li class="<?php if ($page_name == "Counselling"){echo "active";} ?>">
                <a href="counselling">Counselling</a>
            </li>
            <li class="<?php if ($page_name == "About"){echo "active";} ?>">
                <a href="about">About</a>
            </li>
            <li class="<?php if ($page_name == "Contact"){echo "active";} ?>">
                <a href="contact">Contact</a>
            </li>
            <!-- <li class="<?php if ($page_name == "Donate"){echo "active";} ?>">
                <a href="donate">Donate</a>
            </li> -->
        </ul>
    </nav>

    <button class="menu" type="button">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
    </button>
</section>

<section id="sidebar">
    <section id="navigation">
        <div id="logo">
            <a href="/">
                <div class="logo-text">
                    <h3 class="logo-name">Emmanuel Atoe</h3>
                    <p class="logo-tagline">Christian Counsellor & Author</p>
                </div>
            </a>
        </div>

        <div class="nav-space"></div>

        <button class="menu" type="button">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
    </section>

    <div id="sidebar-space"></div>

    <nav>
        <ul>
            <li class="<?php if ($page_name == "Home"){echo "active";} ?>">
                <a href="/">Home</a>
            </li>
            <li class="<?php if ($page_name == "Books"){echo "active";} ?>">
                <a href="books">Books</a>
            </li>
            <!-- <li class="<?php if ($page_name == "Free Gift"){echo "active";} ?>">
                <a href="free-gift.php">Free Gift</a>
            </li> -->
            <!-- <li class="<?php if ($page_name == "Podcasts"){echo "active";} ?>">
                <a href="podcasts">Podcasts</a>
            </li> -->
            <li class="<?php if ($page_name == "Meditations"){echo "active";} ?>">
                <a href="meditations">Meditations</a>
            </li>
            <li class="<?php if ($page_name == "Prayers"){echo "active";} ?>">
                <a href="prayers">Prayers</a>
            </li>
            <li class="<?php if ($page_name == "Counselling"){echo "active";} ?>">
                <a href="counselling">Counselling</a>
            </li>
            <li class="<?php if ($page_name == "About"){echo "active";} ?>">
                <a href="about">About</a>
            </li>
            <li class="<?php if ($page_name == "Contact"){echo "active";} ?>">
                <a href="contact">Contact</a>
            </li>
            <!-- <li class="<?php if ($page_name == "Donate"){echo "active";} ?>">
                <a href="donate">Donate</a>
            </li> -->
        </ul>
    </nav>
    
    <!-- <div id="social">
        <ul>
            <li>
                <a href="https://facebook.com/prayermadueke">
                    <img class="svg" src="assets/images/icons/social/facebook.svg" height="15px" alt="Facebook">
                </a>
            </li>
            <li>
                <a href="https://instagram.com/prayermadueke">
                    <img class="svg" src="assets/images/icons/social/instagram.svg" height="15px" alt="Instagram">
                </a>
            </li>
            <li>
                <a href="https://twitter.com/prayermadueke">
                    <img class="svg" src="assets/images/icons/social/twitter.svg" height="15px" alt="Twitter">
                </a>
            </li>
        </ul>
    </div> -->

    <div id="sidebar-space"></div>
    <div id="sidebar-space"></div>

    <p class="copyright">&copy; <script>document.write(new Date().getFullYear())</script> Emmanuel Atoe. All rights reserved.</p>

</section>