
# Page web pour centraliser les principaux sites consultés

![exemple](readme-img.png)

Ce projet a été mise en place avec la version 4.2.1 de Poker (R Studio)

![](https://img.shields.io/badge/R-4.2.1-blue)

Cette page web a été faite facilement gràce au moteur de site web static
[hugo](https://gohugo.io/) et au thème [slate pour
hugo](https://themes.gohugo.io/slate)

La seule librairie nécessaire pour ce projet est blogdown afin
d’exécuter la commande suivante : `blogdown::build_site()`

## :one: Objectif

Ce projet est réalisé pour faciliter le quotidien en centralisant les
principaux sites nécessaires pour répondre à l’ensemble de mes besoins.

- page web en .html qui recense tous les liens importants avec logos
- faciliter d’accéder aux outils nécessaires à mon quotidien

## :two: Documentations

### 2.1 Génération de la page Web

Le site peut ensuite être généré avec
[hugo](https://gohugo.io/overview/introduction/) ou depuis R avec
[blogdown](https://github.com/rstudio/blogdown), une API R pour utiliser
hugo plus facilement.

Avec R :

``` r
blogdown::build_site()
```

Avec Hugo

``` bash
hugo build
```

### 2.2 Thème utilisé

Voir la doc du theme slate sur [le site
themes.gohugo.io](https://themes.gohugo.io/slate) et sur le
[github](https://github.com/gesquive/slate)

## :three: Structure

Ce projet est structuré principalement de la manière suivante:

## 3.1 Ajouter un lien

Il suffit simplement de remplir le fichier `data/link.yml` en ajoutant
une partie de ce type:

``` yaml
-
  name: "Devin Source"
  url: "https://devin-source.rte-france.com/"
  img: "logos/ODESSA/Gitlab.png"
  bg_color: "#E5E5E5"
  txt_color: "#6441a5"
  tags: ["outil", "devin"]
```

Une fois cette ajout effectué, lors d’un nouveau build le lien apparait
sur la page.

### 3.2 Ajouter une catégorie (tag) ?

Les tags servent à gérer les menus de filtre des applis via le fichier
`config.toml`. Si l’on ajoute un nouveau tag, il faut ajouter un nouveau
menu du type

``` toml
[[ params.nav ]]
name = "POKER"
tag = "poker"
icon = "flask" #icone FontAwesome
```

## :four: Contributions

### 4.1 Recherche de logos

Les étapes pour trouver un logo sont les suivantes :

- rechercher un logo assez grand dans lequel le nom du site est indiqué
  explicitement sur *Google*
- supprimer le fond de ce logo pour que la site soit uniforme via le
  site gratuit <https://www.remove.bg/fr/upload>

### 4.2 Développement recherche de logos

Deux possibilités:

- Ouvrir une [ticket]() en indiquant les infos pour compléter le yaml
  - name: pour l’affichage
  - url: url ou ip:port
  - img: lien où en trouver une
  - tags pour le classement
- Faire une Merge Request après avoir modifier le fichier yaml

## :five: Publier une mise à jour de l’appli sur POKER-PUBLI (A MODIFIER)

L’application est publiée sur POKER PUBLI:
<http://poker-publi.rte-france.com/summer_challenge_HJ/>

Pour faire une mise à jour, une fois le projet Git cloné (idéalement
dans POKER-DEV), il faut faire les changements, tester l’application
localement puis déployer au même endroit. Le dossier `rsconnect`
contient tout le nécessaire pour faire cela et il devrait suffire de
cliquer sur le bouton publish en haut à droite qui proposera la mise à
jour du contenu.

**Prérequis**: Il faut avoir les droits nécessaires pour modifier
l’application sur POKER-PUBLI (être parmi les utilisateurs qui peuvent
changer l’application).

## :six: Contacts

Ce projet est développé par Heikel JAZI

Pour toutes remarques ou problèmes, veuillez me contactez à l’adresse
suivante `heikel.j@live.fr` ou sur *LinkedIn* en précisant que vous
parlez de ce projet.
