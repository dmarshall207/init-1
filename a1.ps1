$env:StoRoot      = "c:\sto"

$env:StoBin       = "$($env:StoRoot)\bin"
$env:StoMyDoc     = "$($env:StoRoot)\my-doc"
$env:StoMy        = "$($env:StoRoot)\nodejs\my"

$env:Mongo        = "$($env:StoRoot)\mongo"
$env:MongoBin     = "$($env:Mongo)\bin"
$env:MongoDb      = "$($env:Mongo)\data\db"
$env:MongoLog     = "$($env:Mongo)\data\log"

$env:MyEnvVars    = "StoRoot StoBin StoMyDoc StoMy Mongo MongoBin MongoDB MongoLog"

"StoRoot          $($env:StoRoot)"
"StoBin           $($env:StoBin)"
"StoMy            $($env:StoMyDoc)"
"Mongo            $($env:StoRoot)\mongo"
"MongoBin         $($env:Mongo)\bin"
"MongoDb          $($env:Mongo)\data\db"
"MongoLog         $($env:Mongo)\data\log"
"MyEnvVars        $env:MyEnvVars"
