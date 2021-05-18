<?php

namespace blogapp\vue;
use blogapp\vue\Vue;

class SaisieVue extends Vue {
    const NOUVEAU_VUE = 1;
    
    public function render() {
        switch($this->selecteur) {
        case self::NOUVEAU_VUE:
            $content = $this->nouveau();
            break;
        }
        return $this->userPage($content);
    }

    public function nouveau(){
        return <<<YOP
        <h1>Nouveau billet</h1>
        <form method="post" action="{$this->cont['router']->pathFor('bill_cree')}">
        <label for="titre">Titre du billet</label>
        <input id="titre" type="text" name="titre" required>
        <label for="contenu">Entrez votre texte :</label>
        <textarea id="contenu" name="body" required> </textarea>
        <input id="submit" type="submit" value="Soumettre">
        </form>
YOP;
    }
}