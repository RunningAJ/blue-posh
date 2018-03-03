function decode-base64 {
<#

.SYNOPSIS
This function will help you decode a base64 string. This users ASCII be default to decode the characters.

.DESCRIPTION

 ____  ____  ___  __  ____  ____     ____   __   ____  ____  ___   ___ 
(    \(  __)/ __)/  \(    \(  __)___(  _ \ / _\ / ___)(  __)/ __) / _ \
 ) D ( ) _)( (__(  O )) D ( ) _)(___)) _ (/    \\___ \ ) _)(  _ \(__  (
(____/(____)\___)\__/(____/(____)   (____/\_/\_/(____/(____)\___/  (__/

.EXAMPLE
decode-base64 -base64 aGVsbG8=

.NOTES
All commands must containing spaces musted be enclosed in quotes. 
 
#>
    Param( 
    [Parameter(Mandatory=$true)][ValidateNotNull()][String] $BASE64
    )
# Command that is executed to decode base64
$results = [system.text.encoding]::ASCII.GetString([System.Convert]::FromBase64String($base64))
return $results
}