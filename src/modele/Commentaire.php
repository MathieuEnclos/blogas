<?php

namespace blogapp\modele;

class Commentaire extends \Illuminate\Database\Eloquent\Model {
    protected $table = 'commentaires';
    protected $primaryKey = 'id';
    public $timestamps = false;
    protected $billet, $content, $auteur,  $date;
}

?>