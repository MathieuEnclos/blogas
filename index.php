<?php

// Démarrage sessions PHP
// (pour le support des variables de session)
session_start();

require 'vendor/autoload.php';

use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;

use \blogapp\conf\ConnectionFactory;
use \blogapp\controleur\UtilisateurControleur;

/**
 * poru accéder à la vue inscription : tapez /newutil dans url
 * pour accéder à la vue connexion : tapez /connexion dans url
 */

// Création de la connexion à la base
ConnectionFactory::makeConnection('src/conf/conf.ini');

// Configuration de Slim

$configuration = [
    'settings' => [
        'displayErrorDetails' => true
    ],
    'flash' => function() {
        return new \Slim\Flash\Messages();
    }
];

// Création du dispatcher

$app = new \Slim\App($configuration);

// Définition des routes

$app->get('/billet/{id}',
          '\blogapp\controleur\BilletControleur:affiche')
    ->setName('billet_aff');

$app->get('/billets',
          '\blogapp\controleur\BilletControleur:liste')
    ->setName('billet_liste');

$app->get('/newutil',
          '\blogapp\controleur\UtilisateurControleur:nouveau')
    ->setName('util_nouveau');

$app->post('/createutil',
          '\blogapp\controleur\UtilisateurControleur:cree')
    ->setName('util_cree');

/**
 * j'ai commencé tes routes - à compléter -
 * la première, l'affichage de la vue de connexion fonctionne
 * le flash ne fonctionne pas au clic de connexion : il devrait même
 * sans interagir avec la base de données ( comme pour l'utilisateur non membre)
 **/
$app->get('/connexion',
            '\blogapp\controleur\MembreControleur:connecte')
    ->setName('memb_co');
    
$app->post('/authentification',
            '\blogapp\controleur\UtilisateurControleur:authentifie')
    ->setName('memb_auth');

$app->run();




