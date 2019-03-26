

# to run this in analogas way to 'source' in bash
# run as:   . .\a1.ps1


$UserId = Read-Host -Prompt 'UserId '

$StoRoot      = "c:\sto"
$StoBin       = "$($StoRoot)\bin"
$StoMyDoc     = "$($StoRoot)\my-doc"
$StoMy        = "$($StoRoot)\nodejs\my"
$Mongo        = "$($StoRoot)\mongo"
$MongoBin     = "$($Mongo)\bin"
$MongoDb      = "$($Mongo)\data\db"
$MongoLog     = "$($Mongo)\data\log"
$SnippetsDirPath = "C:\Users\public$($UserId)\AppData\Roaming\Code\User\snippets"
$MyEnvVars    = "StoRoot StoBin StoMyDoc StoMy Mongo MongoBin MongoDB MongoLog SnippetsDirPath"

"UserId           $($UserId)"
"StoRoot          $($StoRoot)"
"StoBin           $($StoBin)"
"StoMy            $($StoMyDoc)"
"Mongo            $($StoRoot)\mongo"
"MongoBin         $($Mongo)\bin"
"MongoDb          $($Mongo)\data\db"
"MongoLog         $($Mongo)\data\log"
"MyEnvVars        $($MyEnvVars)"
"SnippetsDirPath  $($SnippetsDirPath)"
