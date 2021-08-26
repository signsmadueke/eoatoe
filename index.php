<?php
    require_once "admin/includes/functions/config.php";
    $result = fetchAllDesc("newbooks", "book_id", 0, 1);
    if ($result) {
        $newbooks = $result;
    }

    $result2 = fetchAllDesc("books", "book_id", 0, 3);
    if ($result2) {
        $books = $result2;
    }

    $page_name = "Home";
    $title = 'Emmanuel Atoe';
    $tagline = "Author and Christian Counsellor";
    $page_description = "Dr. (Pastor) Emmanuel O. Atoe's ministry, through the gifts of the Holy Spirit and the grace of God, has enabled him to motivate, inspire and assist many people by prayer, teaching and counselling.";
    $page_image = "eoatoe/eoatoe.jpg";
    $extraBodyClasses = '';
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

                    <div class="book animate reveal">
                        <a alt="<?= $book_titledisplay; ?>" title="<?= $book_titledisplay; ?>" name="<?= $book_link; ?>" href="newbook?book=<?= $book_link; ?>" class="book-image">
                            <div class="image">
                                <img src="assets/images/books/<?= $book_image; ?>" alt= "Book Cover of <?= $book_title; ?>">
                            </div>
                            <div class="shadow">
                                <img src="assets/images/books/<?= $book_image; ?>" alt= "Book Cover of <?= $book_title; ?>">
                            </div>
                        </a>
                    </div>
                <?php } } ?>   

       <?php
            if (!empty($books)) {
                foreach ($books as $book) {
                    extract($book);
                    $book_titledisplay = str_replace("</b>", "'", $book_title);
                    $book_link = strtolower(str_replace("'", "</b>", $book_title));
                    $book_link = strtolower(str_replace(" ", "-", $book_title));
                    ?>
                    
                    <div class="book animate reveal">
                        <a alt="<?= $book_titledisplay; ?>" title="<?= $book_titledisplay; ?>" name="<?= $book_link; ?>" href="book?book=<?= $book_link; ?>" class="book-image">
                            <div class="image">
                                <img src="assets/images/books/<?= $book_image; ?>" alt= "Book Cover of <?= $book_title; ?>">
                            </div>
                            <div class="shadow">
                                <img src="assets/images/books/<?= $book_image; ?>" alt= "Book Cover of <?= $book_title; ?>">
                            </div>
                        </a>
                    </div>
                <?php } } ?>
    </div>
</section>


<?php
    require_once 'inc/footer.php';
?>