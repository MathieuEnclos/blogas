<?php

namespace blogapp\modele;

class Membre extends \Illuminate\Database\Eloquent\Model {
    protected $table = 'membres';
    protected $primaryKey = 'id';
    protected $pseudo, $nom, $prenom, $mail, $hash;
    public $timestamps = false;
}

?>