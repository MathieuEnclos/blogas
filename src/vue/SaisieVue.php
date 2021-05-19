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
        <label class="space" for="titre">Titre du billet :</label>
        <input id="titre" type="text" name="titre" required>
        <label class="space" for="contenu">Entrez votre texte :</label>
        <textarea class="space" cols="100" rows="50" id="contenu" name="body" maxlength="3000" 
        required> </textarea>
        <label class="space" for="contenu">Sélectionnez le thème de votre article : </label>
        <select class="space" name="thematique" required>
        <option value="manga">Mangas</option>
        <option value="cinema">Cinéma</option>
        <option value="music">Musique</option>
        <option value="jv">Jeux Videos</option>
        <option>Voyages</option>
        </select>
        <input class="space" type="submit" value="Soumettre">
        </div>
        </form>
YOP;
    }
}