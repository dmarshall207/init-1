
# to run this in analogas way to 'source' in bash
# run as:   . .\a1.ps1

# 002

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

#:d USAGE:  (alt)
# install vscode
# install git
# ...

#rename  a1 -> setup-env-vars
#rename  b1 -> setup-git-config
#rename  c1 -> setup-sto-repos
#
#add bin/init       -- jump-to

if ($env:location -eq 'dcm') {
    $env:UserId = 'n/a'
    }
else {
    $env:UserId = Read-Host -Prompt 'UserId '
}

$env:StoRoot      = "c:\sto"
$env:StoBin       = "$($env:StoRoot)\bin"
$env:StoMyDoc     = "$($env:StoRoot)\my-doc"
$env:StoNodejs    = "$($env:StoRoot)\nodejs"
$env:StoMy        = "$($env:StoNodejs)\my"
$env:Mongo        = "$($env:StoRoot)\mongo"
$env:MongoBin     = "$($env:Mongo)\bin"
$env:MongoDb      = "$($env:Mongo)\data\db"
$env:MongoLog     = "$($env:Mongo)\data\log"
if ($env:location -eq 'dcm') {
    $env:SnippetsDirPath = "C:\Users\User\AppData\Roaming\Code\User\snippets" } 
else {
    $env:SnippetsDirPath = "C:\Users\public$($env:UserId)\AppData\Roaming\Code\User\snippets" }

# $env:MyEnvVars    = "StoRoot StoBin StoMyDoc StoMy Mongo MongoBin MongoDB MongoLog SnippetsDirPath"
"UserId           $($env:UserId)"
"StoRoot          $($env:StoRoot)"
"StoBin           $($env:StoBin)"
"StoMy            $($env:StoMyDoc)"
"Mongo            $($env:StoRoot)\mongo"
"MongoBin         $($env:Mongo)\bin"
"MongoDb          $($env:Mongo)\data\db"
"MongoLog         $($env:Mongo)\data\log"
"MyEnvVars        $($env:MyEnvVars)"
"SnippetsDirPath  $($env:SnippetsDirPath)"
