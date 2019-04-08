echo "StoRoot    : $env:StoRoot"
echo "StoNodejs  : $env:StoNodejs"
echo "StoMy      : $env:StoMy"

if ((! $env:StoRoot) -or (! (Test-Path $env:StoRoot))) {
    echo "ERR: StoRoot not setup"
    exit}
if ((! $env:StoNodejs) -or (! (Test-Path $env:StoNodejs) )) {
    echo "ERR: StoNodejs not setup"
    exit}

if ((! $env:StoMy) -or (! (Test-Path $env:StoMy))) {
    echo "ERR: StoMy not setup"
    exit}
if( $env:StoRoot -and (Test-Path $env:StoRoot)){
    cd $env:StoRoot
    echo "... setup StoRoot repos"
    git clone https://github.com/dmarshall207/bin.git
    git clone https://github.com/dmarshall207/my-doc.git}
else {
    echo "ERR:  StoRoot repo fail"}
if( $env:StoMy -and (Test-Path $env:StoMy)){
    cd $env:StoMy

    #  dmarshall207/init-1
    #  dmarshall207/write
    #  dmarshall207/my-resume
    #  dmarshall207/road
    #  dmarshall207/puppeteer-examples

    git clone https://github.com/dmarshall207/my-dev-support.git

    git clone https://github.com/dmarshall207/node_modules.git 
    git clone https://github.com/dmarshall207/try-code-001.git
    git clone https://github.com/dmarshall207/try-code-002.git
    git clone https://github.com/dmarshall207/try-code-003.git
    git clone https://github.com/dmarshall207/try-code-004.git
    git clone https://github.com/dmarshall207/try-code-005.git
    git clone https://github.com/dmarshall207/try-code-006.git
    git clone https://github.com/dmarshall207/try-code-007.git

    git clone https://github.com/dmarshall207/insight-code-001.git
    git clone https://github.com/dmarshall207/insight-code-002.git

    git clone https://github.com/dmarshall207/interesting-001.git

    git clone https://github.com/dmarshall207/focus-code-001.git
    git clone https://github.com/dmarshall207/focus-code-002.git

    git clone https://github.com/dmarshall207/app_url-2-pdf.git

    git clone https://github.com/dmarshall207/write.git
    git clone https://github.com/dmarshall207/my-resume.git
    git clone https://github.com/dmarshall207/road.git
    git clone https://github.com/dmarshall207/puppeteer-examples.git

    # ---- these usually put in c:/sto/  -- sometimes
    # ---- I want them expanded here for backup purposes
    # git clone https://github.com/dmarshall207/init-1.git
    # git clone https://github.com/dmarshall207/bin.git
    # git clone https://github.com/dmarshall207/my-doc.git
    }
else {
    echo "ERR:  StoMy setup repos fail"}
