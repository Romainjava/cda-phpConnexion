<?php
include('connexion/connexion.php');
include('connexion/M_all.php');

$model = new M_all();

$listAll = $model->readAll();
$id = filter_input(INPUT_GET, "id");
$oneComp = $model->readOne($id);
$activityAll = $model->readAllActivity(); 
$activity = $model->readOneActivity($id);

$loc = filter_input(INPUT_GET, "loc");

if (!$loc) {
    $loc = "home";
}


include('view/template.php');

$model->closeConnexion();