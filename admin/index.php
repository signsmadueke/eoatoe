<?php
    require_once "includes/functions/config.php";
    blockUrlHackers();

    $totalBooks = getTotal("books");
    $totalDevotions = getTotal("devotions");

    $result = fetchAllDesc("books", "book_id", 0, 3);
    if ($result) {
        $books = $result;
    }

    $response = fetchAllDesc("devotions", "devotion_id", 0, 3);
    if ($response) {
        $devotions = $response;
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
          <div class="content-wrapper">
            <div class="container-fluid">

<!--Line with Area Chart 1 Starts-->
<div class="row match-height">

    <div class="col-12 col-md-12" id="recent-sales">
        <div class="card">
            <div class="card-header">
                <div class="card-title-wrap bar-primary">
                    <h4 class="card-title">Recent Uploads</h4>
                </div>
                <a class="heading-elements-toggle">
                    <i class="la la-ellipsis-v font-medium-3"></i>
                </a>
            </div>
            <div class="card-content mt-1">
                <div class="table-responsive">
                    <table class="table table-hover table-xl mb-0" id="recent-orders">
                        <thead>
                        <tr>
                            <th class="border-top-0">Title</th>
                            <th class="border-top-0">Author</th>
                            <th class="border-top-0">Image</th>
                            <th class="border-top-0">Date Posted</th>
                        </tr>
                        </thead>
                        <tbody>

<!--                        Recent Books Uploaded-->
                        <?php
                            if (!empty($books)) {
                                foreach ($books as $recent_books) {
                                    extract($recent_books); ?>
                                        <tr class="animated fadeInUp">
                                            <td class="text-truncate"><?= $book_title?></td>
                                            <td class="text-truncate"><?= $book_author; ?></td>
                                            <td>
                                                <img src="book_images/<?= $book_image; ?>" class="image-responsive rounded shadow" width="60" alt="">
                                            </td>
                                            <td>
                                                <?= $date_added; ?>
                                            </td>
                                            <td class="text-truncate">$ <?= $book_kindle_price; ?> | $ <?= $book_paperback_price; ?></td>
                                        </tr>
                        <?php } } ?>

<!--                                    Recent Devotion Uploaded-->
                                    <?php
                                    if (!empty($devotions)) {
                                        foreach ($devotions as $recent_devotions) {
                                            extract($recent_devotions); ?>
                                            <tr class="animated fadeInUp">
                                                <td class="text-truncate"><?= $devotion_title?></td>
                                                <td class="text-truncate"><?= $devotion_author; ?></td>
                                                <td>
                                                    <img src="devotion_images/<?= $devotion_image; ?>" class="image-responsive rounded shadow" width="60" alt="">
                                                </td>
                                                <td>
                                                    <?= $datePosted; ?>
                                                </td>
                                            </tr>
                                        <?php } } ?>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<!--Line with Area Chart 1 Ends-->

<div class="row match-height">


</div>

            </div>
          </div>
        </div>

       <?php require_once "includes/templates/footer.php"; ?>