<?php

namespace blogapp\vue;
use blogapp\vue\Vue;

class BilletVue extends Vue {
    const BILLET_VUE = 1;
    const LISTE_VUE = 2;

    public function render() {
        switch($this->selecteur) {
        case self::BILLET_VUE:
            $content = $this->billet();
            break;
        case self::LISTE_VUE:
            $content = $this->liste();
            break;
        }
        return $this->userPage($content);
    }

    public function billet() {
        $res = "";

        if ($this->source != null) {
            $res = <<<YOP
    <h1>Affichage du billet : {$this->source->id}</h1>
    <h2>Nom : {$this->source->titre}</h2>
    <ul>
      <li>Catégorie : {$this->source->categorie->titre}</li>
      <li>Contenu : {$this->source->body}</li>
    </ul>
YOP;
        }
        else
            $res = "<h1>Erreur : le billet n'existe pas !</h1>";

        return $res;
    }

    public function liste() {
        $res = "";

        if ($this->source != null) {
            $res = <<<YOP
    <h1>Affichage de la liste des billets</h1>
    <ul>
YOP;

            foreach ($this->source as $billet) {
                $url = $this->cont->router->pathFor('billet_aff', ['id' => $billet->id]);
                $text = substr($billet->body,0,30);
                $cat =$billet->categorie;
                $bil = "$billet->titre \  $billet->date \ $cat->titre \  $text";
                $res .= <<<YOP
      <li><a href="$url">$bil</a></li>
YOP;
            }
            $res .= "</ul>";
            $res .=<<<YOP
            <a href="{$this->baseURL()}/billets/"><p class="log">Page précédente</p></a>
            <a href="{$this->baseURL()}/billets/"><p class="log">Page suivante</p></a>
YOP;
        }
        else
            $res = "<h1>Erreur : la liste de billets n'existe pas !</h1>";

        return $res;
    }
}
