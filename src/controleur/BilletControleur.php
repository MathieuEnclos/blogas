<?php

namespace blogapp\controleur;

use blogapp\modele\Billet;
use blogapp\modele\Commentaire;
use blogapp\vue\BilletVue;


class BilletControleur {
    private $cont;

    public function __construct($conteneur) {
        $this->cont = $conteneur;
    }

    public function affiche($rq, $rs, $args) {
        $id = $args['id'];
        $billet = Billet::where('id', '=', $id)->first();
        $bl = new BilletVue($this->cont, $billet, BilletVue::BILLET_VUE, $billet->id);
        $rs->getBody()->write($bl->render());
        return $rs;
    }

    public function liste($rq, $rs, $args) {
        $numPage = $args['numPage']-1;
        $billets = Billet::orderBy('date', 'DESC')->skip(20*$numPage)->take(20)->get();

        $bl = new BilletVue($this->cont, $billets, BilletVue::LISTE_VUE, $numPage+1);
        $rs->getBody()->write($bl->render());
        return $rs;
    }

    //insertion commentaire base de données
    public function ajoute($rq, $rs, $args){
        $content = filter_var($rq->getParsedBodyParam('comment'), FILTER_SANITIZE_STRING);
        $billet = $args['id'];
        $auteur = $_COOKIE['membre'];
       
        $comment = new Commentaire();
        $comment->content = $content;
        $comment->billet = $billet;
        $comment->auteur = $auteur;
        $comment->date = date("Y-m-d");
        $comment->save();

        $this->cont->flash->addMessage('info', "Billet posté :)");
        return $rs->withRedirect($this->cont->router->pathFor('billet_aff', ['id' => $billet]));
    }
}
