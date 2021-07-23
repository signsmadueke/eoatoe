<?php
require_once "admin/includes/functions/config.php";
if (isset($_GET['book'])) {
    $bookName = $_GET['book'];
    $book_link = ucwords(str_replace("-", " ", $bookName));
    // $book_link = str_replace("</b>", "'", $book_link);
    $book_link = str_replace("'", "</b>", $book_link);

    $result = whereQuote("progressbooks", "book_title", "$book_link");
    if ($result) {
        $books = $result;
    }

    $response = getOtherBooksAsc("books", "book_title", $book_link, "book_id", 1);
    if ($response) {
        $otherbooks = $response;
    }

    $response2 = getOtherBooksDesc("progressbooks", "book_title", $book_link, "book_id", 1);
    if ($response2) {
        $otherbooksDesc = $response2;
    }
} else {
    redirect_to("books");
}

    foreach ($books as $description_text) {
        $page_description = str_replace("</b>", "'", $description_text['book_description']);
        $page_description = trim(preg_replace('/\s+/', ' ', $page_description));
        $page_description = strip_tags($page_description);
        $page_description = substr($page_description, 0, 1000) . "...";
    }

    foreach ($books as $image) {
        $page_image = "books/" . $image['book_image'];
    }

$title = $book_link;
$tagline = "Emmanuel Atoe, Christian Author of over 100 books on Amazon";
$extraBodyClasses = '';
require_once 'inc/header.php';
?>

<a href="books" class="btn btn-back">
    <img class="svg" src="assets/images/icons/chevron-left.svg">
    <span>Back to Books</span>
</a>

<section id="book-details">
    <?php
    if (!empty($books)) {
        foreach ($books as $book) {
            extract($book);
            $book_title = str_replace("</b>", "'", $book_title);
            $book_description = str_replace("</b>", "'", $book_description); ?>

            <div class="book-image animate reveal">
                <div class="image">
                    <img src="assets/images/books/<?= $book_image; ?>" alt= "Book Cover of <?= $book_title; ?>">
                </div>
                <div class="shadow">
                    <img src="assets/images/books/<?= $book_image; ?>">
                </div>
            </div>
            <!-- <img class="book-image animate reveal" src="assets/images/books/<?= $book_image; ?>" alt= "Book Cover of <?= $book_title; ?>"> -->

            <div class="details">
                <h1 class="book-title animate reveal"><?= $book_title; ?></h1>

                <div class="description animate reveal">
                    <h6 class="title">Synopsis</h6>
                    <div class="text"><?= $book_description; ?></div>
                    <a class="expand-description btn btn-chevron" href="javascript:void(0)"><span class="read-more">Read More</span><span class="read-less">Read Less</span> <img class="svg" src="assets/images/icons/chevron-left.svg"></a>
                </div>
            </div>
        <?php } } ?>
</section>

<section id="other-books" class="animate reveal">

    <?php
    if (isset($otherbooks)) {
        foreach ($otherbooks as $otherbook) {
            extract($otherbook);
            $book_link = strtolower(str_replace(" ", "-", $book_title)); ?>


            <a href="book?book=<?= $book_link; ?>" class="prev-book">
                <div class="btn btn-chevron">
                    <img class="svg" src="assets/images/icons/chevron-left.svg">
                    <span>Previous Book</span>
                </div>
                <div class="prev-book-details">
                    <div class="name">
                        <h4><?= $book_title; ?></h4>
                        <div><?= $book_description; ?></div>
                    </div>
                    <img src="assets/images/books/<?= $book_image; ?>" alt="Book Cover of <?= $book_title; ?>">
                </div>
            </a>
        <?php } } ?>
    <div></div>

    <?php
    if (isset($otherbooksDesc)) {
        foreach ($otherbooksDesc as $otherbookDesc) {
            extract($otherbookDesc);
            $book_link = strtolower(str_replace(" ", "-", $book_title));
             ?>

            <a href="progressbook?book=<?= $book_link; ?>" class="next-book">
                <div class="btn btn-chevron">
                    <span>Next Book</span>
                    <img class="svg" src="assets/images/icons/chevron-right.svg">
                </div>

                <div class="next-book-details">
                    <img src="assets/images/books/<?= $book_image; ?>" alt="Book Cover of <?= $book_title; ?>">
                    <div class="name">
                        <h4><?= $book_title; ?></h4>
                        <div><?= $book_description; ?></div>
                    </div>
                </div>
            </a>
        <?php } } ?>
</section>

<?php
require_once 'inc/footer.php';
?>
