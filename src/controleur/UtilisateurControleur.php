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
     * récupération des données du formulaire : fixed
     * filtrage email : fixed
     * verification same mots de passe : fixed
     * hash du mode passe d'origine : fixed
     * reste à voir si on peut mettre des messages dans le formualaire si format du champ pas bon
     */
    public function cree($rq, $rs, $args) {
        // Récupération variable POST + nettoyage
        $nom = filter_var($rq->getParsedBodyParam('nom'), FILTER_SANITIZE_STRING);
        $pseudo = filter_var($rq->getParsedBodyParam('pseudo'), FILTER_SANITIZE_STRING);
        $prenom = filter_var($rq->getParsedBodyParam('prenom'), FILTER_SANITIZE_STRING);
        $email = filter_var($rq->getParsedBodyParam('email'), FILTER_SANITIZE_EMAIL);
        $password = filter_var($rq->getParsedBodyParam('password'), FILTER_SANITIZE_STRING);
        $confirmation = filter_var($rq->getParsedBodyParam('confirmation'), FILTER_SANITIZE_STRING);

        //verif correspondance des 2 mots de passe
        if($password === $confirmation){
            // Insertion dans la base
            $membre = new Membre();
            $membre->nom = $nom;
            $membre->prenom = $prenom;
            $membre->pseudo = $pseudo;
            $membre->email = $email;
            $membre->admin = 0;

            //hash du mot de passe - que lui dans la BDD
            $membre->hash = password_hash($password, PASSWORD_BCRYPT);

            //insertion base de données
            $membre->save();
        }
        
        // Ajout d'un flash
        $this->cont->flash->addMessage('info', "Utilisateur $pseudo ajouté !");
        // Retour de la réponse avec redirection
        return $rs->withRedirect($this->cont->router->pathFor('billet_liste'));
        

        
    }
}
