<?php

namespace blogapp\modele;

/**
 * classe Membre, avec ses attributs, j'ai laissé éloquent
 * je sais pas si c'est utile
 * j'ai pas mi de HasMany ou de Belongsto pour le moment
 * ce n'est pas demandé il me semble, mais peut-être qu'il faudrait
 * lier les articles saisis par un membre - à voir
 */
class Membre extends \Illuminate\Database\Eloquent\Model {
    protected $table = 'membres';
    protected $primaryKey = 'id';
    protected $pseudo, $nom, $prenom, $mail, $hash;
    public $timestamps = false;
}

?>