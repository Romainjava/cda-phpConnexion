<?php

class M_all extends Connexion
{
    public function readAll()
    {
        try {
            $pdo = $this->getConnexion();
            $query = "SELECT * FROM competences_professionnelles ";
            $stmt = $pdo->prepare($query);
            $stmt->execute();

            return $stmt->fetchAll(PDO::FETCH_ASSOC);
        } catch (PDOException $e) {
            echo $e->getMessage();
        }
    }

    public function readOne($id)
    {
        try {
            $pdo = $this->getConnexion();
            $query = $pdo->prepare("SELECT competences_professionnelles.id,competences_professionnelles.nom, 
                                           competences_professionnelles.description_courte,competences_professionnelles.description_long,
                                           activités_types.descrip_courte
                                     FROM `competences_professionnelles` 
                                     JOIN activités_types ON competences_professionnelles.id_type = activités_types.id 
                                     WHERE competences_professionnelles.id = :id");
            $query->bindParam(":id", $id);
            $query->execute();
            return $query->fetchObject();
        } catch (PDOException $e) {
            echo $e->getMessage();
        }
    }

    public function readOneActivity($id)
    {
        try {
            $pdo = $this->getConnexion();
            $query = $pdo->prepare("SELECT competences_professionnelles.id as id_comp, competences_professionnelles.nom, competences_professionnelles.description_courte as descrip, competences_professionnelles.description_long,
                                            activités_types.descrip_courte, activités_types.id as id_acti
                                    FROM `activités_types` LEFT JOIN  competences_professionnelles 
                                     ON activités_types.id = competences_professionnelles.id_type 
                                    WHERE competences_professionnelles.id_type = :id ");
            $query->bindParam(":id", $id);
            $query->execute();
            return $query->fetchAll(PDO::FETCH_ASSOC);
        } catch (PDOException $e) {
            echo $e->getMessage();
        }
    }

    public function readAllActivity(){
        try {
            $pdo = $this->getConnexion();
            $query = "SELECT id,descrip_courte FROM activités_types";
            $stmt = $pdo->prepare($query);
            $stmt->execute();

            return $stmt->fetchAll(PDO::FETCH_ASSOC);
        } catch (PDOException $e) {
            echo $e->getMessage();
        }
    }
}
