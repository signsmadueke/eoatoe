<?php

require_once "../../includes/functions/config.php";
blockUrlHackers();

$result = fetchAll("meditations", "meditation_id");

if ($result) {
    $meditations = $result;
}

?>
        <section id="hover-effects" class="card">
            <div class="card-body">
                <div class="card-block my-gallery" itemscope="" itemtype="http://schema.org/ImageGallery">
                    <div class="grid-hover">
                        <h5 class="text-bold-400 text-uppercase">Meditations</h5>
                        <div class="row">

                            <?php
                            if (!empty($meditations)) {
                                foreach ($meditations as $meditation) {
                                    extract($meditation); ?>

                                    <div class="col-md-6 col-lg-4 text-center text-light rounded p-2 pt-5 pb-5 m-2" style="background: linear-gradient(to right, saddlebrown, firebrick); color: #ffffff !important;">
                                        <h5 class="text-light" style="font-weight: 400;"><b><?= $meditation_title; ?></b></h5>
                                        <h5>
                                            <a class="text-light" href="edit_meditation?meditation_id=<?= $meditation_id; ?>"><i class="fa fa-fw fa-edit"></i> Edit</a>
                                            <a class="text-light" data-id="<?= $meditation_id; ?>" onclick="delete_meditation(this)"><i class="fa fa-fw fa-trash-o"></i> Delete</a>
                                        </h5>
                                    </div>

                                <?php } } ?>

                        </div>
                    </div>
                </div>
            </div>
        </section>

<script src="polling/js/all_meditations.js"></script>
