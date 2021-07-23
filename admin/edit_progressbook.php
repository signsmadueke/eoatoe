<?php
require_once "includes/functions/config.php";
blockUrlHackers();

if (isset($_GET['progressbook_id'])) {
    $bookId = $_GET['progressbook_id'];

    $result = where("progressbooks", "book_id", "$bookId");
    if ($result) {
        $progressbook_details = $result;
    }
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
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <div class="card-title-wrap bar-success">
                            <h4 class="card-title" id="basic-layout-form">Edit Book in Progress</h4>
                        </div>
                        <p class="mb-0">Edit Book in Progress here.</p>
                    </div>
                    <div class="card-body">
                        <div class="px-3">

                            <?php
                            if (!empty($progressbook_details)) {
                                foreach ($progressbook_details as $progressbook_detail) {
                                    extract($progressbook_detail); ?>
                                    <form class="form" method="post" action="" enctype="multipart/form-data" id="edit_progressbook">
                                        <input id="bookId" type="hidden" data-id="<?= $book_id; ?>">
                                        <div class="form-body">
                                            <h4 class="form-section">
                                                <i class="icon-note"></i> Edit Book in Progress</h4>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="title">Book Title</label>
                                                        <input type="text" id="title" value="<?= $book_title; ?>" class="form-control" name="bookTitle">
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="author">Book Author</label>
                                                        <input type="text" id="author" class="form-control" value="Emmanuel Atoe" name="bookAuthor">
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row">

                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label for="date">Date Uploaded</label>
                                                        <input type="text" disabled id="date" value="<?= $date_added; ?>" class="form-control" name="dateAdded">
                                                    </div>
                                                </div>

                                            </div>

                                            <div class="form-group">
                                                <label>Select Book Image</label>
                                                <input type="file" class="form-control-file" id="" name="bookImage" required>
                                                <label>Current Image: <b><i><?= $book_image; ?></i></b></label>
                                            </div>

                                            <div class="form-group">
                                                <label for="projectinput8">Book Description</label>
                                                <textarea id="summernote" rows="5" class="form-control" name="bookDescription"><?= $book_description; ?></textarea>
                                            </div>
                                        </div>

                                        <div class="form-actions">
                                            <button type="reset" class="btn btn-primary mr-1">
                                                <i class="icon-reload"></i> Reset
                                            </button>
                                            <button type="submit" class="btn btn-success" name="submit" id="submit_btn">
                                                <i class="icon-note"></i> Edit Book
                                            </button>
                                        </div>
                                    </form>
                                <?php } } ?>

                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>

    <script src="polling/js/edit_progressbook.js"></script>
<?php require_once "includes/templates/footer.php"; ?>