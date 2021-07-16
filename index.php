<?php
    require_once "admin/includes/functions/config.php";
    $result = fetchAllDesc("books", "book_id", 0, 4);
    if ($result) {
        $books = $result;
    }

    $title = 'Prayer M. Madueke';
    $tagline = "Christian Author & Speaker";
    $page_description = 'A leading christian author, speaker, and expert on spiritual warfare and deliverance. His 100+ books cover every area of successful christian living.';
    $page_image = "madueke/prayermadueke.jpg";
    $extraBodyClasses = 'dark';
    require_once 'inc/header.php';
?>


<div id="space"></div>

<section id="bestsellers">
	
    <div class="title">
        <h3>Books</h3>
        
        <a href="https://store.madueke.com" class="btn btn-chevron btn-link">
            <span>See all Books</span>
            <img class="svg" src="assets/images/icons/arrow-top-right.svg">
        </a>
    </div>
	
	<div id="books">
        <?php
            if (!empty($books)) {
                foreach ($books as $book) {
                    extract($book);
                    $book_titledisplay = str_replace("</b>", "'", $book_title);
                    $book_link = strtolower(str_replace("'", "</b>", $book_title));
                    $book_link = strtolower(str_replace(" ", "-", $book_title));
                    ?>
                    <a alt="<?= $book_titledisplay; ?>" href="book?book=<?= $book_link; ?>" class="book animated reveal" style="background-image: url(assets/images/books/<?= $book_image; ?>)">
                        <div class="line"></div>
                    </a>
                <?php } } ?>
    </div>
</section>


<?php
    require_once 'inc/footer.php';
?>