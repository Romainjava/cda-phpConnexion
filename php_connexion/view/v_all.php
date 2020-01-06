<?php
if (isset($listAll) && isset($activityAll)) : ?>
    <div class="row">
        <div class="col-md-12 p-5 d-flex justify-content-center">
            <?php foreach ($activityAll as $eachActi) : ?>

                <a href="index.php?loc=activity&id=<?= $eachActi['id'] ?>" class=" p-5 m-5 btn btn-success"><?= $eachActi['descrip_courte'] ?></a>
            <?php endforeach; ?>
        </div>
    </div>
    <ul class="row d-flex justify-content-center">
        <?php foreach ($listAll as $value) : ?>
            <div class="card m-2 col-md-2 ">
                <div class="card-body text-center ">
                    <h2 class="card-title mt-2 mb-5"><?= htmlentities($value['id']) ?></h2>
                    <li class="card-text mt-2 mb-5"><?= htmlentities($value['description_courte']) ?></li>
                    <a href="index.php?loc=one&id=<?= $value['id'] ?>" class="btn btn-primary">Go sur la competence</a>
                </div>
            </div>

        <?php endforeach; ?>
    <?php endif; ?>
    </ul>