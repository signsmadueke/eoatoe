<?php

require_once "../../includes/functions/config.php";
blockUrlHackers();

$result = fetchAll("prayers", "prayer_id");

if ($result) {
    $prayers = $result;
}

?>
        <section id="hover-effects" class="card">
            <div class="card-body">
                <div class="card-block my-gallery" itemscope="" itemtype="http://schema.org/ImageGallery">
                    <div class="grid-hover">
                        <h5 class="text-bold-400 text-uppercase">Prayers</h5>
                        <div class="row">

                            <?php
                            if (!empty($prayers)) {
                                foreach ($prayers as $prayer) {
                                    extract($prayer); ?>

                                    <div class="col-md-6 col-lg-4 text-center text-light rounded p-2 pt-5 pb-5 m-2" style="background: linear-gradient(to right, saddlebrown, firebrick); color: #ffffff !important;">
                                        <h5 class="text-light" style="font-weight: 400;"><b><?= $prayer_title; ?></b></h5>
                                        <h5>
                                            <a class="text-light" href="edit_prayer?prayer_id=<?= $prayer_id; ?>"><i class="fa fa-fw fa-edit"></i> Edit</a>
                                            <a class="text-light" data-id="<?= $prayer_id; ?>" onclick="delete_prayer(this)"><i class="fa fa-fw fa-trash-o"></i> Delete</a>
                                        </h5>
                                    </div>

                                <?php } } ?>

                        </div>
                    </div>
                </div>
            </div>
        </section>

<script src="polling/js/all_prayers.js"></script>
