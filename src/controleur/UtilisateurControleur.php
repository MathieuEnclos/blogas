<?php

namespace blogapp\controleur;
use blogapp\vue\UtilisateurVue;
use blogapp\modele\Membre;

class UtilisateurControleur {
    private $cont;
    
    public function __construct($conteneur) {
        $this->cont = $conteneur;
    }

    public function nouveau($rq, $rs, $args) {
        $bl = new UtilisateurVue($this->cont, null, UtilisateurVue::NOUVEAU_VUE);
        $rs->getBody()->write($bl->render());
        return $rs;
    }
    
    /**
     * pb récupération des données du formulaire : fixed
     * reste à controler le mot de passe en double saisie
     * reste à sécuriser le mot de passe, car je crois qu'il faut une manip en plus
     * reste à filtrer correctement l'email si le format n'est pas bon
     */
    public function cree($rq, $rs, $args) {
        // Récupération variable POST + nettoyage
        $nom = filter_var($rq->getParsedBodyParam('nom'), FILTER_SANITIZE_STRING);
        $pseudo = filter_var($rq->getParsedBodyParam('pseudo'), FILTER_SANITIZE_STRING);
        $prenom = filter_var($rq->getParsedBodyParam('prenom'), FILTER_SANITIZE_STRING);
        $email = filter_var($rq->getParsedBodyParam('email'), FILTER_SANITIZE_EMAIL);
        $password = filter_var($rq->getParsedBodyParam('password'), FILTER_SANITIZE_STRING);
        
        // Insertion dans la base
        $membre = new Membre();
        $membre->nom = $nom;
        $membre->prenom = $prenom;
        $membre->pseudo = $pseudo;
        $membre->email = $email;
        $membre->password = $password;
        $membre->admin = 0;
        $membre->save();


        // Ajout d'un flash
        $this->cont->flash->addMessage('info', "Utilisateur $nom ajouté !");
        // Retour de la réponse avec redirection
        return $rs->withRedirect($this->cont->router->pathFor('billet_liste'));
    }
}
