
# cd c:\sto\nodejs
# mkdir my

echo "StoRoot    : $StoRoot"
echo "StoNodejs  : $StoNodejs"
echo "StoMy      : $StoMy"

if ((! $StoRoot) -or (! (Test-Path $StoRoot))) {
    echo "ERR: StoRoot not setup"
    exit}
if ((! $StoNodejs) -or (! (Test-Path $StoNodejs) )) {
    echo "ERR: StoNodejs not setup"
    exit}
if ((! $StoMy) -or (! (Test-Path $StoMy))) {
    echo "ERR: StoMy not setup"
    exit}
if( $StoRoot -and (Test-Path $StoRoot)){
    cd $StoRoot
    echo "... setup StoRoot repos"
    git clone https://github.com/dmarshall207/bin.git
    git clone https://github.com/dmarshall207/my-doc.git}
else {
    echo "ERR:  StoRoot repo fail"}
if( $StoMy -and (Test-Path $StoMy)){
    cd $StoMy
    git clone https://github.com/dmarshall207/my-dev-support.git
    git clone https://github.com/dmarshall207/node_modules.git }
else {
    echo "ERR:  StoMy setup repos fail"}
