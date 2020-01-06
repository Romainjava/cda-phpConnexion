<?php

class Connexion
{
    public $bdd = null;

    public function startConnexion()
    {
        try {
            $dsn = "mysql:host=localhost;dbname=competences;charset=utf8";
            $username = "root";
            $pswd = "";
            $this->bdd = new PDO($dsn, $username, $pswd, array(PDO::ATTR_PERSISTENT => TRUE));
            return $this->bdd;
        } catch (PDOException $e) {
            echo "Error : " . $e->getMessage() . "";
            die();
        }
    }

    public function getConnexion()
    {
        if($this->bdd == null){
            $this->startConnexion();
        }
        return $this->bdd;
    }

    public function closeConnexion()
    {
        $this->bdd = null;
    }

}
