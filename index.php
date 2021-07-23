<?php
    require_once "admin/includes/functions/config.php";
    $result = fetchAllDesc("newbooks", "book_id", 0, 2);
    if ($result) {
        $newbooks = $result;
    }

    $result2 = fetchAllDesc("books", "book_id", 0, 2);
    if ($result2) {
        $books = $result2;
    }

    $page_name = "Home";
    $title = 'Emmanuel Atoe';
    $tagline = "Christian Counsellor & Author";
    $page_description = "Dr. (Pastor) Emmanuel O. Atoe's ministry, through the gifts of the Holy Spirit and the grace of God, has enabled him to motivate, inspire and assist many people by prayer, teaching and counselling.";
    $page_image = "eoatoe/eoatoe.jpg";
    $extraBodyClasses = 'dark';
    require_once 'inc/header.php';
?>


<div id="space"></div>

<section id="bestsellers">
	
    <div class="title">
        <h3>Books</h3>
        
        <a href="books" class="btn btn-chevron btn-link">
            <span>See all Books</span>
            <img class="svg" src="assets/images/icons/arrow-top-right.svg">
        </a>
    </div>
	
	<div id="books">
        <?php
            if (!empty($newbooks)) {
                foreach ($newbooks as $book) {
                    extract($book);
                    $book_titledisplay = str_replace("</b>", "'", $book_title);
                    $book_link = strtolower(str_replace("'", "</b>", $book_title));
                    $book_link = strtolower(str_replace(" ", "-", $book_title));
                    ?>
                    <a alt="<?= $book_titledisplay; ?>" href="newbook?book=<?= $book_link; ?>" class="book animated reveal" style="background-image: url(assets/images/books/<?= $book_image; ?>)">
                        <div class="line"></div>
                    </a>
                <?php } } ?>   

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