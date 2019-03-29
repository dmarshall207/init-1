# git clone https://github.com/dmarshall207/init-1.git

echo ""
echo "---[ pick setup context"
echo "1) ua-lib"
echo "2) other"
$env:SetupId = Read-Host -Prompt 'host context: '
# $env:SetupId = '1'
echo ""

if ($env:SetupId -eq '1') {
    echo "context:  1) ua-lib"
    if (! (Test-Path "c:\sto")) {mkdir "c:\sto"}
    if (! (Test-Path "c:\sto")) {echo "ERR: failed to insure c:\sto"}
    cd "c:\sto"
    if (Test-Path "c:\sto\init-1") {
        echo "... 'init-1' already exists ..."
    } else {
        echo "... cloning 'init-1'"
        git clone "https://github.com/dmarshall207/init-1.git"}
    cd "c:\sto\init-1"
    invoke-expression -Command "c:\sto\init-1\setup-env-vars.ps1"
    invoke-expression -Command "c:\sto\init-1\setup-git-config.ps1"
    echo ""
    echo "... next: setup nodejs then run 'setup-setup-2.ps1'"
    echo ""
} else {
    echo ""
    echo "ERR: no setup yet for this context"    
    exit}

# cd "c:\sto\init-1-1"
