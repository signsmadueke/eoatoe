<?php
    require_once "admin/includes/functions/config.php";

    $result = fetchAll("counselling", "counsel_id");
    if ($result) {
        $counselling = $result;
    }


    $page_name = "Counselling";
    $title = 'Counselling — Emmanuel Atoe';
    $tagline = "Author and Christian Counsellor";
    $page_description = 'Counselling by Emmanuel Atoe, Author and Christian Counsellor.';
    $page_image = "eoatoe/eoatoe.jpg";
    $extraBodyClasses = '';
    require_once 'inc/header.php';
?>

<div id="space"></div>
    
<section id="all-devotionals">

    <h1 class="section-title animated reveal">Counselling</h1>
        
    <!-- <div class="devotionals" id="devotionals">
    <?php
if (!empty($counselling)) {
    foreach ($counselling as $counsel) {
        extract($counsel);
        $counsel_title = str_replace("</b>", "'", $counsel_title);
        $counsel_link = strtolower(str_replace(" ", "-", $counsel_title));
        $counsel_link = str_replace("'", "</b>", $counsel_link);
        $counsel_body = str_replace("</b>", "'", $counsel_body);
        $htmltoplaintext = strip_tags($counsel_body);
        $htmltoplaintext = trim(preg_replace('/\s+/', ' ', $htmltoplaintext));
        $htmltoplaintext = substr($htmltoplaintext, 0, 200) . "...";
        ?>


        <div class="devotional animated reveal">
            <div class="details">
                <a href="counsel?counsel=<?= $counsel_link; ?>">
                    <h3><?= $counsel_title; ?></h3>
                </a>
                <!-- <div class="devotional-date">
                    <p><span>Posted on </span><?= date("D, d M Y", strtotime($datePosted)); ?></p>
                </div> -->
                <a href="counsel?counsel=<?= $counsel_link; ?>" class="description">
                    <div><?= $htmltoplaintext; ?></div>
                </a>
                <a href="counsel?counsel=<?= $counsel_link; ?>" class="btn btn-chevron">
                    <span>Read More</span>
                    <svg xmlns="http://www.w3.org/2000/svg" width="7" height="11" viewBox="0 0 7 11" fill="none" class="svg replaced-svg">
                        <path d="M1.52395 10.917C1.40956 11.0277 1.22409 11.0277 1.1097 10.917L0.0857946 9.92607C-0.028598 9.81536 -0.028598 9.63587 0.0857946 9.52517L4.24502 5.5L0.0857946 1.47484C-0.0285979 1.36413 -0.0285983 1.18464 0.0857941 1.07394L1.1097 0.0830293C1.22409 -0.0276765 1.40956 -0.0276764 1.52395 0.0830293L6.91421 5.29955C7.0286 5.41026 7.0286 5.58975 6.91421 5.70045L1.52395 10.917Z" fill="#444444"></path>
                    </svg>
                </a>
            </div>
        </div>
    <?php } } ?>
    </div> -->

</section>

<div id="space"></div>

<!-- <script src="inc/polling/js/all_counselling.js"></script> -->
<?php
    require_once 'inc/footer.php';
?>