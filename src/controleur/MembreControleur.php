<?php

namespace blogapp\controleur;

use blogapp\modele\Membre;
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

    public function deconnecte($rq, $rs, $args){
      if (isset($_COOKIE["membre"]))
      {
        setcookie("membre");
      }
      $this->cont->flash->addMessage('info', "Vous êtes déconnecté(e)");
      return $rs->withRedirect($this->cont->router->pathFor('billet_liste',['numPage' => 1]));
    }

    //partie pour faire l'authentification - it's yours
    public function authentifie($rq, $rs, $args) {
        // Récupération variable POST + nettoyage
        $email = filter_var($rq->getParsedBodyParam('email'), FILTER_SANITIZE_STRING);
        $password = filter_var($rq->getParsedBodyParam('password'), FILTER_SANITIZE_STRING);

        //...vérification existence dans la base : soit connexion Ok soit pas bon : autre flash et redirection vers la vue inscription
        //...
        //...
        $membre = Membre::where('email','=',$email)->first();
        if ($membre === null)
        {
          $this->cont->flash->addMessage('error', "Erreur : email incorrect");
          return $rs->withRedirect($this->cont->router->pathFor('memb_co'));
        }
        else
        {
          $hash = $membre->hash;
          if (password_verify($password, $hash)) {
            setcookie("membre","m",time()+7*24*3600);
            $pseudo=$membre->pseudo;
          }
          else{
            $this->cont->flash->addMessage('error', "Erreur : mot de passe incorrect");
            return $rs->withRedirect($this->cont->router->pathFor('memb_co'));
          }
        }

        // Ajout d'un flash - il faut récupérer le pseudo ou le nom associé dans la base pour l'afficher dans $nom
          $this->cont->flash->addMessage('info', "Utilisateur $pseudo connecté !");
        // Retour de la réponse avec redirection
        return $rs->withRedirect($this->cont->router->pathFor('billet_liste',['numPage' =>1]));
    }
}
