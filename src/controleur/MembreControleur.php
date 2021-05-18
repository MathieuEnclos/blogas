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
        $email = filter_var($rq->getParsedBodyParam('email'), FILTER_SANITIZE_STRING);
        $password = filter_var($rq->getParsedBodyParam('password'), FILTER_SANITIZE_STRING);

        //...vérification existence dans la base : soit connexion Ok soit pas bon : autre flash et redirection vers la vue inscription
        //...
        //...

        // Ajout d'un flash - il faut récupérer le pseudo ou le nom associé dans la base pour l'afficher dans $nom
        $this->cont->flash->addMessage('info', "Utilisateur $pseudo connecté !");
        // Retour de la réponse avec redirection
        return $rs->withRedirect($this->cont->router->pathFor('billet_liste'));
    }
}
