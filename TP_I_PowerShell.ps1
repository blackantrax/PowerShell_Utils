# PowerShell TP I
# Nom: Kevin Nelson
# Cours: Developpement d'utilitaires de sécurité informatique
# Collège Bois de Boulogne

[string]$Question1="Q1: "
$Question1
# Donnez la commande qui permet de lister les commandes qui ont comme verbe 'stop'
Get-Verb -verb stop

[string]$Question2="Q2: "
#Que fait la cmdlet 'stop-service' et que permet de faire l'option '-confirm'
"`n"+$Question2
[string]$reponse2="La commande est: Get-Help Stop-Service et elle permet d'arrêter un ou 
plusieurs services en cours d'exécution. L'option -confirm permet de demander 
confirmation a l'utilisateur avant de supprimer un service."
$reponse2

[string]$Question3="Q3: "
#Quelle option de 'Stop-service' permet d'arreter un service même si ce service a des services dépendants
"`n"+$Question3
[string]$reponse3="Il s'agit de l'option -Force"
$reponse3

[string]$Question4="Q4: "
#Donnez 2 façons d'utiliser 'stop-service' pour arrêter le service 'wuauserv'
"`n"+$Question4
[string]$reponse4='Stop-Service -Name "wuauserv" -Force '
[string]$reponse4_1='Get-Service -DisplayName "wuauserv" | Stop-Service'
$reponse4+"`n"+$reponse4_1


[string]$Question5="Q5: "
#Donnez la commande qui permet d lister les commandes dont le nom contient le mot 'alias' et qui sont de type 'cmdlet'
"`n"+$Question5
[string]$reponse5= 'Get-command -Name *alias* -CommandType Cmdlet'
$reponse5

[string]$Question6="Q6: "
#A quelle commande correspond l'alias 'gcm'
"`n"+$Question6
[string]$reponse6='Get-command -Name "gcm" -CommandType Alias permet de voir comme alias Get-command'
$reponse6

[string]$Question7="Q7: "
#Donnez la commande qui permet de lister tous les alias possible de 'Get-childItem'
"`n"+$Question7
[string]$reponse7='Get-Alias -Definition Get-ChildItem'
$reponse7

[string]$Question8="Q8: "
#Quelle commande liste les processus
"`n"+$Question8
[string]$reponse8='Get-Process'
$reponse8

[string]$Question9="Q9: "
#Quelle commande liste les processus triews selon la colonne WS
"`n"+$Question9
[string]$reponse9='Get-Process | Sort-Object -Property WS'
$reponse9

[string]$Question10="Q10: "
#Exécutez ces deux commandes et dites ce que fait l'option '-ErrorAction silentlyContinue'
#avec le cmdlet et où trouve-t-on l'aide sur cette option.
#Get-Process firefox
#Get-Process firefox -ErrorAction SilentlyContinue
"`n"+$Question10
[string]$reponse10= "La premiere commande permet d'obtenir le processus firefox si ce dernier est en cours d'exécution
La deuxieme commande permet de faire la même chose que la première a la seule différence que l'option
-ErrorAction SilentlyContinue permet de ne pas afficher les erreurs en cas d'absence du process dans la console. 
Sa description se trouve dans les paramètres de préferences de powershell et il s'agit de la variable
erroractionpreference qui prend la valeur '$erroractionpreference' par défaut."
$reponse10
