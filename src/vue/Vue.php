<?php

namespace blogapp\vue;

class Vue {
    protected $cont;
    protected $source;
    protected $selecteur;

    public function __construct($cont, $src, $sel) {
        $this->cont = $cont;
        $this->source = $src;
        $this->selecteur = $sel;
    }

    // Méthode qui calcule la base de l'URL (nécessaire pour le bon
    // fonctionnnement des fichiers « statiques », comme styles.css)
    public function baseURL() {
        $url = $this->cont['environment']['SCRIPT_NAME'];
        $url = str_replace("/index.php", "", $url);
        return $url;
    }

    public function userPage($cont) {
        $flash = $this->cont->flash->getMessages();
        // Décommenter la ligne suivante pour voir la
        // structure des flashs (pour info)
        // var_dump($flash);

        // Gestion des boutons
        if (isset($_COOKIE["membre"]))
        {
          $boutons = <<< YOP
          <a href="deconnexion"><p class="log">Deconnexion</p></a>
          <a href="deconnexion"><p class="log">Deconnexion</p></a>
          YOP;
        }
        else
        {
          $boutons = <<< YOP
          <a href="connexion"><p class="log">Connexion</p></a>
          <a href="newutil"><p class="log">Inscription</p></a>
          YOP;
        }

        $res = <<< YOP
 <!doctype html>
 <html>
   <head>
     <title>Application de Blog !</title>
     <link rel="stylesheet" href="{$this->baseURL()}/css/styles.css" type="text/css" />
     <meta charset="utf-8" />
   </head>
   <body>
   <div id=log>
          $boutons
    </div>
YOP;
        // Gestion des flashs
        if ($flash) {
            foreach ($flash as $catFlash => $lesFlash) {
                $res .= <<< YOP
            <div class="flash-$catFlash">
              <ul>
YOP;
                foreach($lesFlash as $f)
                    $res .= "<li>$f</li>";

                $res .= "</ul></div>";
            }
        }
        $res .= <<<YOP
     $cont
   </body>
</html>
YOP;
        return $res;
    }
}
