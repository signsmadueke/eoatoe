<?php

require_once "../../includes/functions/config.php";
blockUrlHackers();

$result = fetchAll("meditations", "meditation_id", 0, 9);

if ($result) {
    $meditations = $result;
}

?>
        <section id="hover-effects" class="card">
            <div class="card-body">
                <div class="card-block my-gallery" itemscope="" itemtype="http://schema.org/ImageGallery">
                    <div class="grid-hover">
                        <h5 class="text-bold-400 text-uppercase">Devotions</h5>
                        <div class="row">

                            <?php
                            if (!empty($meditations)) {
                                foreach ($meditations as $meditation) {
                                    extract($meditation); ?>

                                    <div class="col-md-6 col-lg-4">
                                        <figure class="effect-winston">
                                            <img src="meditation_images/<?= $meditation_image; ?>" width="100%" alt="img06">
                                            <figcaption>
                                                <p>

                                                    <a href="edit_meditation?meditation_id=<?= $meditation_id; ?>"><i class="fa fa-fw fa-edit"></i></a>
                                                    <a class="text-danger" data-id="<?= $meditation_id; ?>" onclick="delete_meditation(this)"><i class="fa fa-fw fa-trash-o"></i></a>
                                                </p>
                                            </figcaption>
                                        </figure>
                                        <h5 class="text-center text-light rounded p-1" style="width: 95%; background: linear-gradient(to right, saddlebrown, firebrick);"><b><?= $meditation_title; ?></b></h5>
                                    </div>

                                <?php } } ?>

                        </div>
                    </div>
                </div>
            </div>
        </section>

<script src="polling/js/all_meditations.js"></script>
