
# to run this in analogas way to 'source' in bash
# run as:   . .\a1.ps1

# :d USAGE:
#     * run this file    -- source this -- establishes env vars
#     * run dwnload-git-installer.ps1
#     * run dwnload-nodejs-binary-x64.ps1
#     * install git
#     * reload powershell
#     * run 'b1.ps1'      -- setups up git config
#     * install 'nodejs'  -- unpack into '/sto' + rename to 'nodejs' + mkdir 'my'
#     * :DAVIS: at this pt nodejs is installed - could use javascript
#     * run 'c1.ps1'      -- clones initial repos under /sto and /sto/nodejs/my


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
