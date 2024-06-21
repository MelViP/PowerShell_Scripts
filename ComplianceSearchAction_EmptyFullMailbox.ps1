#This scripts allows you to iterate with the result search elements in MS Purview in order to delete the content of an email in exchange

#Conectar a IPPS

Connect-IPPSSession -UserPrincipalName UPN

#Substraer cantidad de elementos resultado de la búsqueda

$elements = Read-Host "Cantidad de elementos resultado de la búsqueda"

#Se puede purgar 10 elementos por cmdlet

$i = [int]$elements / 10 

#substraer nomber de la busqueda de contenido

$naame = Read-Host "Inserte nombre de la búsqueda de contenido"

#ejecutar purga hasta que elementos = 0 

while ($i -gt 0) {
    New-ComplianceSearchAction -SearchName $naame -Purge -PurgeType HardDelete -Confirm:$false
    $i--
    
}
