<?php
    require_once "includes/functions/config.php";
    blockUrlHackers();

    if (isset($_GET['meditation_id'])) {
        $meditationId = $_GET['meditation_id'];

        $result = where("meditations", "meditation_id", "$meditationId");
        if ($result) {
            $meditation_details = $result;
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
                            <h4 class="card-title" id="basic-layout-form">Edit Meditation</h4>
                        </div>
                        <p class="mb-0">Edit Meditation here.</p>
                    </div>
                    <div class="card-body">
                        <div class="px-3">

                            <?php
                            if (!empty($meditation_details)) {
                                foreach ($meditation_details as $meditation_detail) {
                                    extract($meditation_detail); ?>
                                    <form class="form" method="post" action="" enctype="multipart/form-data" id="edit_meditation">
                                        <input id="meditationId" type="hidden" data-id="<?= $meditation_id; ?>">
                                        <div class="form-body">
                                            <h4 class="form-section">
                                                <i class="icon-open"></i> Meditation Details</h4>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label for="title">Meditation Title</label>
                                                        <input type="text" id="title" value="<?= $meditation_title; ?>" class="form-control" name="meditationTitle">
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="author">Meditation Author</label>
                                                        <input type="text" id="author" value="<?= $meditation_author; ?>" class="form-control" name="meditationAuthor">
                                                    </div>
                                                </div>

                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="date">Date Added</label>
                                                        <input type="text" disabled id="date" value="<?= date("Y-m-d")?>" class="form-control" name="datePosted">
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label for="body">Meditation Message</label>
                                                <textarea id="summernote" rows="5" class="form-control" name="meditationBody"><?= $meditation_body?></textarea>
                                            </div>
                                        </div>

                                        <div class="form-actions">
                                            <button type="reset" class="btn btn-primary mr-1">
                                                <i class="icon-reload"></i> Reset
                                            </button>
                                            <button type="submit" class="btn btn-success" name="submit" id="submit_btn">
                                                <i class="icon-notebook"></i> Add Meditation
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

    <script src="polling/js/edit_meditation.js"></script>
<?php require_once "includes/templates/footer.php"; ?>