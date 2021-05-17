<?php

namespace blogapp\controleur;
use blogapp\vue\MembreVue;

class MembreControleur {
    private $cont;
    
    public function __construct($conteneur) {
        $this->cont = $conteneur;
    }

    //partie pour accéder à la page de connexion
    public function connecte($rq, $rs, $args) {
        $bl = new MembreVue($this->cont, null, MembreVue::NOUVEAU_VUE);
        $rs->getBody()->write($bl->render());
        return $rs;
    }

    //partie pour faire l'authentification - it's yours
    public function authentifie($rq, $rs, $args) {
        // Récupération variable POST + nettoyage
        $nom = filter_var($rq->getParsedBodyParam('nom'), FILTER_SANITIZE_STRING);
        // Insertion dans la base...
        // ...
        // Ajout d'un flash
        $this->cont->flash->addMessage('info', "Utilisateur $nom connecté !");
        // Retour de la réponse avec redirection
        return $rs->withRedirect($this->cont->router->pathFor('billet_liste'));
    }
}
