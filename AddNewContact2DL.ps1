#To connect and add a single contact into O365 instead of using the GUI

Connect-ExchangeOnline -UserPrincipalName <UPN> -ShowProgress $true

#Recopilar información contacto a Office

$name = Read-Host "Nombre"
$lastname = Read-Host "Apellido"
$correo = Read-Host "Correo"
$org = Read-Host "Organización o compañía"
$displayName = " " + $name + " " +$lastname + " ($org)"

$new_contact = New-MailContact -Name $name -Lastname $lastname -DisplayName $displayName -ExternalEmailAddress $correo

Add-DistributionGroupMember -Identity "DLname" -Member $new_contact

#Success msg
Write-Host "------------------------------Contacto agregado a Zendesk con éxito------------------------------"
