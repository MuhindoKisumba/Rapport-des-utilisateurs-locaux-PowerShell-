#  README — Rapport des Utilisateurs Locaux avec PowerShell

## Présentation

Ce script PowerShell automatise la génération d'un **rapport complet des utilisateurs locaux** présents sur un ordinateur Windows.

Il récupère les principales informations de chaque compte utilisateur, les affiche dans la console puis génère automatiquement deux rapports :

- un rapport **CSV** destiné à l'analyse ou à l'importation dans Excel ;
- un rapport **HTML** pouvant être consulté dans un navigateur Web.

Le script produit également un résumé statistique indiquant le nombre total de comptes, le nombre de comptes actifs et le nombre de comptes désactivés.

---

# Objectifs

Ce projet permet de :

- inventorier les comptes utilisateurs locaux ;
- contrôler les comptes actifs et désactivés ;
- documenter automatiquement une machine Windows ;
- faciliter les audits de sécurité ;
- préparer des rapports d'administration système ;
- alimenter un inventaire informatique ;
- détecter rapidement des comptes oubliés ou inactifs.

---

# Fonctionnalités

Le script réalise automatiquement les opérations suivantes :

- Création du dossier de rapports si nécessaire
- Inventaire des utilisateurs locaux
- Collecte des informations principales
- Affichage dans la console PowerShell
- Export au format CSV
- Génération d'un rapport HTML
- Calcul des statistiques
- Affichage d'un résumé final

---

# Informations collectées

Pour chaque utilisateur local, les informations suivantes sont récupérées :

- Nom du compte
- Nom complet
- Description
- Compte activé ou désactivé
- Mot de passe obligatoire
- Expiration du mot de passe
- Autorisation de modification du mot de passe
- Dernière connexion
- SID (Security Identifier)

---

# Structure du script

Le script est organisé en plusieurs étapes :

1. Définition du dossier de sortie
2. Création automatique du dossier
3. Génération de la date du rapport
4. Création des noms de fichiers
5. Inventaire des utilisateurs locaux
6. Affichage des informations
7. Export CSV
8. Génération du rapport HTML
9. Calcul des statistiques
10. Affichage du résumé

---

# Technologies utilisées

- PowerShell 5.1
- PowerShell 7+
- Cmdlets natives Windows
- Get-LocalUser
- Select-Object
- Export-Csv
- ConvertTo-Html
- Out-File
- Format-Table

---

# Arborescence obtenue

```
C:\
│
└── Rapports
    │
    ├── Utilisateurs_Locaux_2026-06-30_10-15-32.csv
    │
    └── Utilisateurs_Locaux_2026-06-30_10-15-32.html
```

---

# Exemple de rapport CSV

| Nom | Activé | Dernière connexion |
|------|---------|-------------------|
| Administrateur | Oui | 30/06/2026 |
| Invité | Non | Jamais |
| Abdiel | Oui | 29/06/2026 |

---

# Exemple de résumé

```
================ RÉSUMÉ ================

Nombre total d'utilisateurs : 6

Utilisateurs actifs : 4

Utilisateurs désactivés : 2

Rapport CSV :
C:\Rapports\Utilisateurs_Locaux_2026-06-30_10-15-32.csv

Rapport HTML :
C:\Rapports\Utilisateurs_Locaux_2026-06-30_10-15-32.html
```

---

# Cas d'utilisation

Ce script est particulièrement utile pour :

- Administration système
- Inventaire informatique
- Audit Windows
- Cybersécurité
- Gouvernance des comptes
- Contrôle des accès
- Vérification des postes utilisateurs
- Documentation technique
- Centre de services (Help Desk)
- Support informatique

---

# Prérequis

- Windows 10 ou supérieur
- Windows Server 2016/2019/2022/2025
- PowerShell 5.1 minimum
- Droits de lecture sur les comptes locaux

---

# Exécution

Ouvrir PowerShell puis lancer :

```powershell
.\Rapport_Utilisateurs_Locaux.ps1
```

Si l'exécution des scripts est bloquée :

```powershell
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
```

---

# Résultats produits

Le script génère automatiquement :

- un rapport CSV ;
- un rapport HTML ;
- un affichage console formaté ;
- un résumé statistique.

---

# Avantages

- 100 % PowerShell natif
- Aucune dépendance externe
- Exécution rapide
- Génération automatique des rapports
- Compatible avec Excel
- Compatible avec les navigateurs Web
- Code facilement personnalisable
- Idéal pour l'administration Windows
- Convient aux audits de sécurité
- Adapté aux environnements professionnels

---

# Améliorations possibles

Le script peut être enrichi avec :

- export PDF ;
- envoi automatique du rapport par e-mail ;
- historisation des rapports ;
- comparaison avec les rapports précédents ;
- surveillance des nouveaux comptes ;
- détection des comptes inactifs ;
- journalisation détaillée ;
- génération de graphiques ;
- intégration avec Active Directory ;
- planification automatique via le Planificateur de tâches Windows.

---

# Auteur
MUHINDO KISUMBA Abdiel

Projet pédagogique PowerShell — Rapport automatisé des utilisateurs locaux.

---

# Licence

Projet libre d'utilisation à des fins pédagogiques, d'administration système, d'audit informatique et de démonstration.
