<?php
    require_once "includes/functions/config.php";
    blockUrlHackers();

    $result = fetchAll("books", "book_id", 0, 9);

    if ($result) {
        $books = $result;
    }
?>
<?php require_once "includes/templates/header.php"; ?>
 
<body data-col="2-columns" class=" 2-columns ">
<!-- ////////////////////////////////////////////////////////////////////////////-->
<div class="wrapper">


    <?php require_once "includes/templates/sidebar.php"; ?>


    <?php require_once "includes/templates/topbar.php"; ?>

    <div class="main-panel">
        <div class="main-content">

            <div id="all_books">
                <section id="hover-effects" class="card">
                    <div class="card-body">
                        <div class="card-block my-gallery" itemscope="" itemtype="http://schema.org/ImageGallery">
                            <div class="grid-hover">
                                <h5 class="text-bold-400 text-uppercase">Books</h5>
                                <div class="row">

                                    <?php
                                    if (!empty($books)) {
                                        foreach ($books as $book) {
                                            extract($book); ?>

                                            <div class="col-md-6 col-lg-4">
                                                <figure class="effect-winston">
                                                    <img src="../assets/images/books/<?= $book_image; ?>" width="100%" alt="img06">
                                                </figure>
                                                <p>
                                                    <a href="edit_book?book_id=<?= $book_id; ?>"><h5><i class="fa fa-fw fa-edit"></i> Edit</h5></a>
                                                    <a class="text-danger" data-id="<?= $book_id; ?>" onclick="delete_book(this)"><h5><i class="fa fa-fw fa-trash-o"></i> Delete</h5></a>
                                                </p>
                                                <h5 class="text-center text-light rounded p-1" style="width: 95%; background: linear-gradient(to right, saddlebrown, firebrick);"><b><?= $book_title; ?></b></h5>
                                            </div>

                                        <?php } } ?>

                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>

        </div>
    </div>
<script src="polling/js/all_books.js"></script>
<?php require_once "includes/templates/footer.php"; ?>