<?php
class Enemigo {

    public $nombre;
    public $tipo;
    public $fuerza;
    

    function presentacion(){

        echo "Hola soy: y mi edad es: " ;
    }

    function hablar(){

        echo " NANANAN ";
    }

   

    function matar(){

        echo ' ';
        echo "I Kill Uuuuu ";

    }
}
$pennywise = new Enemigo();
$pennywise->tipo = "Payaso ";
echo $pennywise->tipo;
$pennywise->matar();

$chucky = new Enemigo();
$chucky->tipo = "Muñeco ";
echo $chucky->tipo;
$chucky->hablar();

$jason = new Enemigo();
$jason->tipo = "Asesino ";
echo $jason->tipo;
$jason->hablar();
$jason->matar();

$dracula = new Enemigo();
$dracula->tipo = "Vampiro ";
echo $dracula->tipo;
$dracula->matar();

$freddy = new Enemigo();
$freddy->tipo = "Vampiro ";
echo $freddy->tipo;
$freddy->hablar();

?>
