# Conception-de-la-Base-de-Donn-es-et-Documentation-SQLERD-pour-Unity-Care-Clinic

## Description

Cette base de données est conçue pour prendre en charge le système de gestion hospitalière de Unity Care Clinic. Elle garantit une gestion efficace des données relatives aux départements, médecins, patients, chambres, admissions, rendez-vous, médicaments, prescriptions, et personnel administratif. Le système est optimisé pour la fiabilité, la sécurité, et l’évolutivité.

## Objectifs

Centralisation des données : Faciliter la gestion des informations hospitalières au sein d’un seul système.
Performance : Garantir une gestion rapide et efficace des requêtes.
Fiabilité : Assurer l'intégrité des données et leur accessibilité.
Sécurité : Protéger les données sensibles, comme les informations sur les patients et le personnel.
Évolutivité : Permettre l’ajout de nouvelles fonctionnalités sans refonte majeure.

## Fonctionnalités Clés

Gestion des départements et des emplacements.
Suivi des patients, médecins, et personnel administratif.
Organisation des admissions, chambres, et rendez-vous.
Gestion des prescriptions et des médicaments.
Production de rapports analytiques pour soutenir la prise de décision.

## Tables Principales

departments : Informations sur les départements
doctors : Informations sur les médecins (ID, nom, spécialité, département).
patients : Détails des patients (ID, nom, sexe, date de naissance, numéro de téléphone, e-mail).
rooms : Informations sur les chambres (ID, numéro, type, disponibilité).
admissions : Détails des admissions des patients.
appointments : Informations sur les rendez-vous (date, heure, médecin, patient).
medications : Liste des médicaments disponibles.
prescriptions : Médicaments prescrits pour les patients.

## Instructions pour l’Utilisation

### Configuration initiale

Importez le fichier SQL contenant le schéma et les données initiales dans votre SGBD (MySQL).
Configurez les connexions et les privilèges selon vos besoins.

### Exécution des Requêtes

Utilisez les exemples de requêtes SQL ci-dessus pour manipuler et extraire les données.
Modifiez les requêtes pour répondre à des besoins spécifiques.

### Maintenance

Effectuez des sauvegardes régulières de la base de données.
Vérifiez l'intégrité des données à l'aide de contraintes et d'index.
Exigences Techniques
Serveur de base de données : MySQL 8.0.40 ou version ultérieure.
Langue SQL
Outils recommandés : MySQL Workbench, phpMyAdmin, ou toute interface SQL.

JAAFAR HAMZA;
