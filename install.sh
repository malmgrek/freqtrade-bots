#!/bin/bash


source $HOME/freqtrade-bots/bin/utils.sh


with_permission \
    "git clone https://github.com/freqtrade/freqtrade.git --depth 10 $HOME/freqtrade" \
    "Clone Freqtrade to $HOME?"


echo "Create and source .env..."
cd $HOME/freqtrade
python3 -m venv .env && source .env/bin/activate

echo "Install Pip..."
python3 -m pip install --upgrade pip

echo "Install Cython..."
python3 -m pip install --upgrade Cython

echo "Install requirements"
python3 -m pip install --upgrade -r requirements.txt

echo "Install Freqtrade"
python3 -m pip install -e .

deactivate
cd $HOME/freqtrade-bots
