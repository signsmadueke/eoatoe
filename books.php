<?php
    require_once "admin/includes/functions/config.php";

    $result = fetchAll("books", "book_id");
    if ($result) {
        $books = $result;
    }

    $result2 = fetchAll("newbooks", "book_id");
    if ($result2) {
        $newbooks = $result2;
    }

    $result3 = fetchAll("progressbooks", "book_id");
    if ($result3) {
        $progressbooks = $result3;
    }


    $page_name = "Books";
    $title = 'Books — Emmanuel Atoe';
    $tagline = "Author and Christian Counsellor";
    $page_description = "Dr. (Pastor) Emmanuel O. Atoe's ministry, through the gifts of the Holy Spirit and the grace of God, has enabled him to motivate, inspire and assist many people by prayer, teaching and counselling.";
    $page_image = "eoatoe/eoatoe.jpg";
    $extraBodyClasses = '';
    require_once 'inc/header.php';
?>

<div id="space"></div>

<section id="all-books">
    
    <h1 class="section-title animated reveal">Released Books</h1>
    
    <div id="books">
            
        <!--Normal Book-->
        <?php
        if (!empty($books)) {
            foreach ($books as $book) {
                extract($book);
                $book_titledisplay = str_replace("</b>", "'", $book_title);
                $book_link = strtolower(str_replace("'", "</b>", $book_title));
                $book_link = strtolower(str_replace(" ", "-", $book_link));
                ?>
                <div class="book animate reveal">
                    <a alt="<?= $book_titledisplay; ?>" title="<?= $book_titledisplay; ?>" href="book?book=<?= $book_link; ?>" class="book-image">
                        <div class="image">
                            <img src="assets/images/books/<?= $book_image; ?>" alt= "Book Cover of <?= $book_title; ?>">
                        </div>
                        <div class="shadow">
                            <img src="assets/images/books/<?= $book_image; ?>" alt= "Book Cover of <?= $book_title; ?>">
                        </div>
                    </a>
                    <div class="book-details">
                        <a alt="<?= $book_titledisplay; ?>" title="<?= $book_titledisplay; ?>" href="book?book=<?= $book_link; ?>" >
                            <h2 class="book-name" title="<?= $book_titledisplay; ?>"><?= $book_titledisplay; ?></h2>
                        </a>
                        <a alt="<?= $book_titledisplay; ?>" title="<?= $book_titledisplay; ?>" href="book?book=<?= $book_link; ?>" class="btn btn-chevron btn-view">
                            <span>View Details</span>
                            <svg xmlns="http://www.w3.org/2000/svg" width="7" height="11" viewBox="0 0 7 11" fill="none" class="svg replaced-svg">
                                <path d="M1.52395 10.917C1.40956 11.0277 1.22409 11.0277 1.1097 10.917L0.0857946 9.92607C-0.028598 9.81536 -0.028598 9.63587 0.0857946 9.52517L4.24502 5.5L0.0857946 1.47484C-0.0285979 1.36413 -0.0285983 1.18464 0.0857941 1.07394L1.1097 0.0830293C1.22409 -0.0276765 1.40956 -0.0276764 1.52395 0.0830293L6.91421 5.29955C7.0286 5.41026 7.0286 5.58975 6.91421 5.70045L1.52395 10.917Z" fill="#444444"></path>
                            </svg>
                        </a>
                    </div>
                </div>
            <?php } } ?>
    </div>
</section>

<div id="space"></div>

<?php if (!empty($newbooks)) {?>
<section id="all-books">
    
    <h1 class="section-title animated reveal">Coming Soon Books</h1>
    
    <div id="books">
        <?php 
            foreach ($newbooks as $newbook) {
                extract($newbook);
                $book_titledisplay = str_replace("</b>", "'", $book_title);
                $book_link = strtolower(str_replace("'", "</b>", $book_title));
                $book_link = strtolower(str_replace(" ", "-", $book_link));
        ?>
                
                <div class="book animate reveal">
                    <a alt="<?= $book_titledisplay; ?>" title="<?= $book_titledisplay; ?>" href="newbook?book=<?= $book_link; ?>" class="book-image">
                        <div class="image">
                            <img src="assets/images/books/<?= $book_image; ?>" alt= "Book Cover of <?= $book_title; ?>">
                        </div>
                        <div class="shadow">
                            <img src="assets/images/books/<?= $book_image; ?>" alt= "Book Cover of <?= $book_title; ?>">
                        </div>
                    </a>
                    <div class="book-details">
                        <a alt="<?= $book_titledisplay; ?>" title="<?= $book_titledisplay; ?>" href="newbook?book=<?= $book_link; ?>" >
                            <h2 class="book-name" title="<?= $book_titledisplay; ?>"><?= $book_titledisplay; ?></h2>
                        </a>
                        <a alt="<?= $book_titledisplay; ?>" title="<?= $book_titledisplay; ?>" href="newbook?book=<?= $book_link; ?>" class="btn btn-chevron btn-view">
                            <span>View Details</span>
                            <svg xmlns="http://www.w3.org/2000/svg" width="7" height="11" viewBox="0 0 7 11" fill="none" class="svg replaced-svg">
                                <path d="M1.52395 10.917C1.40956 11.0277 1.22409 11.0277 1.1097 10.917L0.0857946 9.92607C-0.028598 9.81536 -0.028598 9.63587 0.0857946 9.52517L4.24502 5.5L0.0857946 1.47484C-0.0285979 1.36413 -0.0285983 1.18464 0.0857941 1.07394L1.1097 0.0830293C1.22409 -0.0276765 1.40956 -0.0276764 1.52395 0.0830293L6.91421 5.29955C7.0286 5.41026 7.0286 5.58975 6.91421 5.70045L1.52395 10.917Z" fill="#444444"></path>
                            </svg>
                        </a>
                    </div>
                </div>
            <?php } ?>
    </div>
</section>

<div id="space"></div>

<?php } ?>

<?php if (!empty($progressbooks)) {?>
<section id="all-books">
    
    <h1 class="section-title animated reveal">Books in Progress</h1>
    
    <div id="books">
        <?php 
            foreach ($progressbooks as $progressbook) {
                extract($progressbook);
                $book_titledisplay = str_replace("</b>", "'", $book_title);
                $book_link = strtolower(str_replace("'", "</b>", $book_title));
                $book_link = strtolower(str_replace(" ", "-", $book_link));
        ?>
                
                <div class="book animate reveal">
                    <a alt="<?= $book_titledisplay; ?>" title="<?= $book_titledisplay; ?>" href="progressbook?book=<?= $book_link; ?>" class="book-image">
                        <div class="image">
                            <img src="assets/images/books/<?= $book_image; ?>" alt= "Book Cover of <?= $book_title; ?>">
                        </div>
                        <div class="shadow">
                            <img src="assets/images/books/<?= $book_image; ?>" alt= "Book Cover of <?= $book_title; ?>">
                        </div>
                    </a>
                    <div class="book-details">
                        <a alt="<?= $book_titledisplay; ?>" title="<?= $book_titledisplay; ?>" href="progressbook?book=<?= $book_link; ?>" >
                            <h2 class="book-name" title="<?= $book_titledisplay; ?>"><?= $book_titledisplay; ?></h2>
                        </a>
                        <a alt="<?= $book_titledisplay; ?>" title="<?= $book_titledisplay; ?>" href="progressbook?book=<?= $book_link; ?>" class="btn btn-chevron btn-view">
                            <span>View Details</span>
                            <svg xmlns="http://www.w3.org/2000/svg" width="7" height="11" viewBox="0 0 7 11" fill="none" class="svg replaced-svg">
                                <path d="M1.52395 10.917C1.40956 11.0277 1.22409 11.0277 1.1097 10.917L0.0857946 9.92607C-0.028598 9.81536 -0.028598 9.63587 0.0857946 9.52517L4.24502 5.5L0.0857946 1.47484C-0.0285979 1.36413 -0.0285983 1.18464 0.0857941 1.07394L1.1097 0.0830293C1.22409 -0.0276765 1.40956 -0.0276764 1.52395 0.0830293L6.91421 5.29955C7.0286 5.41026 7.0286 5.58975 6.91421 5.70045L1.52395 10.917Z" fill="#444444"></path>
                            </svg>
                        </a>
                    </div>
                </div>
            <?php } ?>
    </div>
</section>

<div id="space"></div>

<?php } ?>

<?php
    require_once 'inc/footer.php';
?>
