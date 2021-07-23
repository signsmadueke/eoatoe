<?php

require_once "../../includes/functions/config.php";
blockUrlHackers();

$result = fetchAll("progressbooks", "book_id");

if ($result) {
    $progressbooks = $result;
}

?>

<section id="hover-effects" class="card">
    <div class="card-body">
        <div class="card-block my-gallery" itemscope="" itemtype="http://schema.org/ImageGallery">
            <div class="grid-hover">
                <h5 class="text-bold-400 text-uppercase">Books in Progress</h5>
                <div class="row">

                    <?php
                    if (!empty($progressbooks)) {
                        foreach ($progressbooks as $progressbook) {
                            extract($progressbook); ?>

                            <div class="col-md-6 col-lg-4">
                            <figure class="effect-winston">
                                <img src="../assets/images/books/<?= $book_image; ?>" width="100%" alt="img06">
                            </figure>
                            <p>
                                <a href="edit_progressbook?progressbook_id=<?= $book_id; ?>"><h5><i class="fa fa-fw fa-edit"></i> Edit</h5></a>
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

<script src="polling/js/all_progressbooks.js"></script>
