<?php

namespace blogapp\vue;
use blogapp\vue\Vue;

class UtilisateurVue extends Vue {
    const NOUVEAU_VUE = 1;
    
    public function render() {
        switch($this->selecteur) {
        case self::NOUVEAU_VUE:
            $content = $this->nouveau();
            break;
        }
        return $this->userPage($content);
    }

    //interface d'inscription
    public function nouveau() {
        return <<<YOP
        <h1>Formulaire d'inscription</h1>
        <form method="post" action="{$this->cont['router']->pathFor('util_cree')}">
            <label for="pseudo">Pseudo</label>
            <input id="pseudo" type="text" name="pseudo" placeholder="<DarkMetal92>" required>
            <label for="nom">Nom</label>
            <input id="nom" type="text" name="nom" placeholder="<Pivert>" required>
            <label for="prenom">Prénom</label>
            <input id="prenom" type="text" name="prenom" placeholder="<Augustin>"required>
            <label for="email">E-mail</label>
            <input id="email" type="text" name="email" placeholder="<augustin.pivert@domaine.fr>" required>
            <label for="mdp">Mot de passe</label>
            <input id="mdp" name="password" type="text" required>
            <label for="mdp">Confirmation de mot de passe</label>
            <input id="confirm" name="confirmation" type="text" required>
            <input type="submit" value="Inscription">
        </form>
YOP;
    }
}
