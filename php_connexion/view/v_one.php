<div class="row">

    <?php if (isset($oneComp)) :?>

        <div class="card col-4 d-flex justify-content-center align-items-center">
            <div class="card-body  d-flex flex-column justify-items-center align-items-center">
                <h2 class="card-title bg-primary w-100 text-center p-5"><?= htmlentities($oneComp->id) ?></h2>
                <li class="card-title"><?= htmlentities($oneComp->description_courte) ?></li>
                <li class="card-text text-secondary"><?= htmlentities($oneComp->description_long) ?></li>
                <li class="card-text"><?= htmlentities($oneComp->descrip_courte) ?></li>
                <a href="index.php?loc=all" class="btn btn-primary">Retour à la liste</a>
            </div>
        </div>

    <?php endif; ?>
</div>