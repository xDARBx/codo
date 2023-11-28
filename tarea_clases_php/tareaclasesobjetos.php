<?php
class Enemigo {

    public $nombre;
    public $tipo;
    public $fuerza;
    
    
    function hablar(){

        echo " Muajajaja ";
    }

   

    function matar(){

        echo ' ';
        echo "I Kill Uuuuu ";

    }
}
$pennywise = new Enemigo();
$pennywise->tipo = "Payaso ";
$pennywise->nombre = "Pennywise ";
$pennywise->fuerza = 1000;
echo $pennywise->nombre;
echo $pennywise->tipo;
echo $pennywise->fuerza;


$chucky = new Enemigo();
$chucky->tipo = " Muñeco ";
$chucky->nombre = " Chucky ";
echo $chucky->nombre;
echo $chucky->tipo;
$chucky->matar();

$jason = new Enemigo();
$jason->tipo = " Asesino ";
echo $jason->tipo;
$jason->matar();
$jason->hablar();

$dracula = new Enemigo();
$dracula->tipo = " Vampiro ";
$dracula->fuerza = 300;
echo $dracula->tipo;
echo $dracula->fuerza;
$dracula->matar();


$freddy = new Enemigo();
$freddy->tipo = " Asesino ";
echo $freddy->tipo;
$freddy->matar();

?>