<?php

namespace blogapp\vue;
use blogapp\vue\Vue;

class MembreVue extends Vue {
    const NOUVEAU_VUE = 1;
    
    public function render() {
        switch($this->selecteur) {
        case self::NOUVEAU_VUE:
            $content = $this->connecte();
            break;
        }
        return $this->userPage($content);
    }

    public function connecte() {
        return <<<YOP
        <h1>Connexion</h1>
        <form method="post" action="{$this->cont['router']->pathFor('memb_co')}">
            <label for="email">E-mail</label>
            <input id="email" name="email" type="text">
            <label for="mdp">Mot de passe</label>
            <input id="mdp" name="password" type="password">
            <input type="submit" value="Connexion">
        </form>
YOP;
    }
}