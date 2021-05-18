<?php

namespace blogapp\controleur;
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

        //tableau associatif catégorie-thematique
        $tab = array(1 => 'Mangas', 2 => 'Cinema', 3 => 'Musique', 4 => 'Jeux Videos');
        foreach($tab as $key => $value){
            if($thematique === $value){
                $cat_id = $key;
            }
        }

        //Insertion dans la base
        if($cat_id !== null){
            $billet = new Billet();
            $billet->titre = $titre;
            $billet->body = $body;
            $billet->date = $date;
            $billet->save();
        }else{
            $this->cont->flash->addMessage('info', "Catégorie inexistante");
            return $rs->withRedirect($this->cont->router->pathFor('bill_nouveau')); 
        }

        $this->cont->flash->addMessage('info', "Billet posté :)");
        return $rs->withRedirect($this->cont->router->pathFor('billet_liste'));
    }
}
        
        
