<?php

namespace blogapp\vue;
use blogapp\vue\Vue;

class CommentaireVue extends Vue {
    const NOUVEAU_VUE = 1;

    public function render() {
        switch($this->selecteur) {
        case self::NOUVEAU_VUE:
            $content = $this->ajout_com();
            break;
        }
        return $this->userPage($content);
    }

    public function ajout_com() {
        
    }
}
