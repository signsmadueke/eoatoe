<?php
require_once "includes/functions/config.php";
blockUrlHackers();

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
                            <h4 class="card-title" id="basic-layout-form">Add Prayer</h4>
                        </div>
                        <p class="mb-0">Prayers added here are strictly Emmanuel Atoe's Prayers.</p>
                    </div>
                    <div class="card-body">
                        <div class="px-3">

                            <form class="form" method="post" action="" enctype="multipart/form-data" id="prayer_form">
                                <div class="form-body">
                                    <h4 class="form-section">
                                        <i class="icon-book-open"></i> Prayer Details</h4>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label for="title">Prayer Title</label>
                                                <input type="text" id="title" class="form-control" name="prayerTitle">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="author">Prayer Author</label>
                                                <input type="text" id="author" value="Emmanuel Atoe" class="form-control" name="prayerAuthor">
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="date">Date Added</label>
                                                <input type="text" id="date" value="<?= date("Y-m-d")?>" class="form-control" name="datePosted">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label for="body">Prayer Message</label>
                                        <textarea id="summernote" rows="5" class="form-control" name="prayerBody"></textarea>
                                    </div>
                                </div>

                                <div class="form-actions">
                                    <button type="reset" class="btn btn-primary mr-1">
                                        <i class="icon-reload"></i> Reset
                                    </button>
                                    <button type="submit" class="btn btn-success" name="submit" id="submit_btn">
                                        <i class="icon-notebook"></i> Add Prayer
                                    </button>
                                </div>
                            </form>

                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>

<script src="polling/js/add_prayer.js"></script>
<?php require_once "includes/templates/footer.php"; ?>