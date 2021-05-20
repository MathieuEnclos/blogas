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

    public function cree($rq, $rs, $args) {
        // Récupération variable POST + nettoyage
        $nom = filter_var($rq->getParsedBodyParam('nom'), FILTER_SANITIZE_STRING);
        $pseudo = filter_var($rq->getParsedBodyParam('pseudo'), FILTER_SANITIZE_STRING);
        $prenom = filter_var($rq->getParsedBodyParam('prenom'), FILTER_SANITIZE_STRING);
        $email = filter_var($rq->getParsedBodyParam('email'), FILTER_SANITIZE_EMAIL);
        $password = filter_var($rq->getParsedBodyParam('password'), FILTER_SANITIZE_STRING);
        $confirmation = filter_var($rq->getParsedBodyParam('confirmation'), FILTER_SANITIZE_STRING);

        //Insertion dans la base
        $membre = new Membre();
        $membre->nom = $nom;
        $membre->prenom = $prenom;
        $membre->pseudo = $pseudo;
        $membre->admin = 0;

        // Vérification e-mail
        if(!(filter_var($email, FILTER_VALIDATE_EMAIL))){
            $this->cont->flash->addMessage('info', "Echec : email incorrect ");
            return $rs->withRedirect($this->cont->router->pathFor('util_nouveau'));
        } else {
            $membre->email = $email;
        }

        // Vérification mot de passe
        if($password !== $confirmation){
            $this->cont->flash->addMessage('info', "Echec : mots de passe différents ");
            return $rs->withRedirect($this->cont->router->pathFor('util_nouveau'));
        } else {
            $membre->hash = password_hash($password, PASSWORD_BCRYPT);
        }

        //Insertion effective et confirmation
        $membre->save();
        $this->cont->flash->addMessage('info', "Utilisateur $pseudo ajouté !");
        return $rs->withRedirect($this->cont->router->pathFor('billet_liste',['numPage' =>1])); 
    }
}
