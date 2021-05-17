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
        $res = <<< YOP
 <!doctype html>
 <html>
   <head>
     <title>Application de Blog !</title>
     <link rel="stylesheet" href="{$this->baseURL()}/css/styles.css" type="text/css" />
     <meta charset="utf-8" />
   </head>
   <body>
   <!-- COMMENTAIRE : ici, les liens sont cliquables, mais je n'ai pas trouvé l'adressage pour
   afficher les vues correspondantes (UtilisateurVue::nouveau et MembreVUe::connecte)
   -->
   <div id=log>
        <a href="xxxxxxxxxxxx"><p class="log">Connexion</p></a>
        <a href="xxxxxxxxxxxx"><p class="log">Inscription</p></a>
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
