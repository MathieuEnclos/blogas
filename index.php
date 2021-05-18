<?php

// Démarrage sessions PHP
// (pour le support des variables de session)
session_start();

require 'vendor/autoload.php';

use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;

use \blogapp\conf\ConnectionFactory;
use \blogapp\controleur\UtilisateurControleur;
use \blogapp\controleur\SaisieControleur;

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

$app->get('/billets/{numPage}',
          '\blogapp\controleur\BilletControleur:liste')
    ->setName('billet_liste');


// routes d'inscription
$app->get('/newutil',
          '\blogapp\controleur\UtilisateurControleur:nouveau')
    ->setName('util_nouveau');

$app->post('/createutil',
          '\blogapp\controleur\UtilisateurControleur:cree')
    ->setName('util_cree');


// routes nouveau billet
$app->get('/newbill',
        '\blogapp\controleur\SaisieControleur:nouveau')
    ->setName('bill_nouveau');

$app->post('/createbill',
    '\blogapp\controleur\SaisieControleur:saisie')
->setName('bill_cree');


//routes de connexion
$app->get('/connexion',
            '\blogapp\controleur\MembreControleur:connecte')
    ->setName('memb_co');

$app->post('/authentification',
            '\blogapp\controleur\MembreControleur:authentifie')
    ->setName('memb_auth');

$app->get('/deconnexion',
            '\blogapp\controleur\MembreControleur:deconnecte')
    ->setName('memb_do');

$app->run();
