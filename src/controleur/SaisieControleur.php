<?php

namespace blogapp\controleur;
use blogapp\vue\SaisieVue;
use blogapp\modele\Membre;

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
        $titre = filter_var($rq->getParsedBodyParam('body'), FILTER_SANITIZE_STRING);

        $this->cont->flash->addMessage('info', "Billet posté ");
        return $rs->withRedirect($this->cont->router->pathFor('billet_liste'));
    }
}
        
        
