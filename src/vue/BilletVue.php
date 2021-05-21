<?php

namespace blogapp\vue;
use blogapp\vue\Vue;
use blogapp\modele\Commentaire;

class BilletVue extends Vue {
    const BILLET_VUE = 1;
    const LISTE_VUE = 2;

    protected $numPage;

    public function __construct($cont, $src, $sel, $np) {
        $this->cont = $cont;
        $this->source = $src;
        $this->selecteur = $sel;
        $this->numPage = $np;
    }

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

        if ($this->source != null){
            $res = <<<YOP
            <h1>Affichage du billet : {$this->source->id}</h1>
            <h2>Nom : {$this->source->titre}</h2>
            <ul>
            <li>Catégorie : {$this->source->categorie->titre}</li>
            <li>Contenu : {$this->source->body}</li>
            </ul>
YOP;
            if(isset($_COOKIE["membre"])){
                $urlCom = $this->cont['router']->pathFor('com_ajoute',['id' => $this->numPage]);
                $res .= <<<YOP
                <form method="post" action="$urlCom">
                <label class="space" for="comment">Saisissez votre commentaire :</label>
                <textarea id="comment" class="space" cols="100" rows="5" name="comment" maxlength="400"></textarea>
                <input type="submit" class="space" value="Valider">
YOP;

}
            $commentaires
        }
        else
            $res = "<h1>Erreur : le billet n'existe pas !</h1>";

            if(isset($_COOKIE["membre"])){
                $res .= <<<YOP
                <form method="post" action="{$this->cont['router']->pathFor('com_ajoute')}">
                <label class="space" for="comment">Saisissez votre commentaire :</label>
                <textarea id="comment" class="space" cols="100" rows="5" name="comment" maxlength="400"></textarea>
                <input type="submit" class="space" value="Valider">
YOP;        }
        } else {
            $res = "<h1>Erreur : le billet n'existe pas !</h1>";
            return $res;
        }
    }


    public function liste() {
        $res = "";
        if ($this->source != null) {
            $res = <<<YOP
            <h1>Affichage de la liste des billets</h1>
            <ul class="liste">
YOP;

            foreach ($this->source as $billet) {
                $url = $this->cont->router->pathFor('billet_aff', ['id' => $billet->id]);
                $text = substr($billet->body,0,30);
                $cat =$billet->categorie;
                $bil = "$billet->titre \  $billet->date \ $cat->titre \  $text";
                $res .= <<<YOP
                <li class="entree"><a class="lien" href="$url">$bil</a></li>
YOP;
            }
            $res .= "</ul>";
            $pageP = "{$this->baseURL()}/billets/".($this->numPage -1);
            $pageS = "{$this->baseURL()}/billets/".($this->numPage +1);
            $boutons = <<<YOP
            <div id="center">
            <a href=$pageS><p class="nav">Page suivante</p></a>
YOP;
            if ($this->numPage>1)
            {
              $boutons .= "<a href=$pageP><p class=\"nav\">Page précédente</p></a></div>";
            }
            $res.=$boutons;
        }
        else
            $res = "<h1>Erreur : la liste de billets n'existe pas !</h1>";

        return $res;
    }
}
