#!/usr/bin/env bash

rustBuildAndTest () {
    echo "Rust build and test"

    export PATH="/usr/local/bin:$HOME/.cargo/bin:$PATH"

    cargo build --all
    cargo test --all
}

pythonBuild () {
    pythonPath=$1
    venvPath=$2

    echo "Python installation..."

    cd python
    rm -rf ${venvPath}
    virtualenv -p ${pythonPath} ${venvPath}
    . ${venvPath}/bin/activate
    pip install -r requirements.txt

    echo "Python build..."
    ssh-agent sh -c "ssh-add; pip install -e . --verbose"
}

rustBuildAndTest

pythonPath=$(which python"$PYTHON_VERSION")
commitId=$(git rev-parse --short HEAD)
venvPath="/tmp/venv27-$commitId"

pythonBuild pythonPath venvPath
