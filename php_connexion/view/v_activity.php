<div class="row">

    <?php if (isset($activity)) :?>
        <?php foreach ($activity as $value) : ?>
        <div class="card col-4 d-flex justify-content-center align-items-center">
            <div class="card-body  d-flex flex-column justify-items-center align-items-center">
                
                <li class="card-title"><?= htmlentities($value['nom']) ?></li>
                <li class="card-text text-secondary"><?= htmlentities($value['descrip']) ?></li>
                <li class="card-text"><?= htmlentities($value['description_long']) ?></li>
                <a href="index.php?loc=one&id=<?=$value['id_comp'] ?>" class="btn btn-primary"><?=$oneComp->nom?></a>
            </div>
        </div>
        <?php endforeach ?>
    <?php endif; ?>
</div>