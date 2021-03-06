param(
    [parameter(Mandatory=$false)]
    [bool]$reverse,

    [parameter(Mandatory=$false)][ValidateRange(1, [int]::MaxValue)]
    [int]$length
)

if($PSBoundParameters.ContainsKey('length') -eq $false){
    $length = 10
}
if($PSBoundParameters.ContainsKey('reverse') -eq $false){
    $reverse = $false
}
$padding_offsets=@("   ","  "," ",""," ","  ","   ","    " )

if( $reverse -eq $false ){

    echo "    ╚⊙ ⊙╝"
    For($i=0;$i -lt $length;$i++){
        echo "$($padding_offsets[ $i % 8 ])╚═(███)═╝"
    }

}else{

    For($i=0;$i -lt $length;$i++){
        echo "$($padding_offsets[ $i % 8 ])╔═(███)═╗"
    }
    echo "$($padding_offsets[ $($i +1) % 8 ])╚⊙ ⊙╝"

}
