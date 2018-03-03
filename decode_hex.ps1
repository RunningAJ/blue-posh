function decode-hex {
<#
.SYNOPSIS
This function will help you decode a HEX string

.DESCRIPTION

64 65 63 6F 64 65 2D 68 65 78
64 65 63 6F 64 65 2D 68 65 78
64 65 63 6F 64 65 2D 68 65 78
64 65 63 6F 64 65 2D 68 65 78
64 65 63 6F 64 65 2D 68 65 78
64 65 63 6F 64 65 2D 68 65 78

See the example below for proper usage

.EXAMPLE
decode-hex -hex "68656c6c6f"

decode-hex -hex "68 65 6c 6c 6f"

decode-hex -hex "x68x65x6cx6cx6f"


 
#>
    Param( 
    [Parameter(Mandatory=$true)][ValidateNotNull()][String] $hex
    )
# Command that is executed to decode HEX
if ( $hex -cmatch ' ') { $hex.Split(" ") | forEach {[char]([convert]::toint16($_,16))} | forEach {$result = $result + $_} 
return $result
} ELSEIF ( $hex -cmatch 'x' ) {
$hex = ($hex -replace 'x','') -split '(..)' | Where-Object { $_ -ne "$null" } | forEach {[char]([convert]::toint16($_,16))} | forEach {$result = $result + $_}
return $result
} ELSE { $hex = ($hex -replace 'x','') -split '(..)' | Where-Object { $_ -ne "$null" } | forEach {[char]([convert]::toint16($_,16))} | forEach {$result = $result + $_}
return $result }
}
