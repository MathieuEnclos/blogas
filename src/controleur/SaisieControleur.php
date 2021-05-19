<?php

namespace blogapp\controleur;
use blogapp\modele\Categorie;
use blogapp\vue\SaisieVue;
use blogapp\modele\Billet;

class SaisieControleur {
    private $cont;
    
    public function __construct($conteneur) {
        $this->cont = $conteneur;
    }

    public function nouveau($rq, $rs, $args) {
        $bl = new SaisieVue($this->cont, null, SaisieVue::NOUVEAU_VUE);
        $rs->getBody()->write($bl->render());
        return $rs;
    }

    public function saisie($rq, $rs, $args){
        // Récupération variable POST + nettoyage
        $titre = filter_var($rq->getParsedBodyParam('titre'), FILTER_SANITIZE_STRING);
        $body = filter_var($rq->getParsedBodyParam('body'), FILTER_SANITIZE_STRING);
        $thematique = filter_var($rq->getParsedBodyParam('thematique'), FILTER_SANITIZE_STRING);
        $date = date("Y-m-d");

        //usage des categories de la bdd
        $categories = Categorie::get();
        foreach($categories as $categorie){
            if($categorie->titre === $thematique){
                $cat_id = $categorie->id;
            }
        }

        //Insertion dans la base{
        $billet = new Billet();
        $billet->titre = $titre;
        $billet->body = $body;
        $billet->date = $date;
        $billet->cat_id = $cat_id;
        $billet->save();
        
        $this->cont->flash->addMessage('info', "Billet posté :)");
        return $rs->withRedirect($this->cont->router->pathFor('billet_liste',['numPage' =>1]));
    }
}
        
        
 