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

    public function nouveau() {
        return <<<YOP
        <h1>Formulaire d'inscription</h1>
        <form method="post" action="{$this->cont['router']->pathFor('util_cree')}">
            <label for="pseudo">Pseudo</label>
            <input id="pseudo" type="text" name="pseudo" placeholder="<DarkMetal92>">
            <label for="nom">Nom</label>
            <input id="nom" type="text" name="nom" placeholder="<Pivert>">
            <label for="prenom">Prénom</label>
            <input id="prenom" type="text" name="prenom" placeholder="<Augustin>">
            <label for="email">E-mail</label>
            <input id="email" type="text" name="email" placeholder="<augustin.pivert@domaine.fr>">
            <label for="mdp">Mot de passe</label>
            <input id="mdp" name="password" type="text">
            <input type="submit" value="Inscription">
        </form>
YOP;
    }
}
