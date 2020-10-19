#!/bin/bash


function mkdir_user_data () {
  local dir=$1
  local exchange=$2
  local user_data=$dir/user_data
  mkdir -p $user_data/backtest_results
  mkdir -p $user_data/data/$exchange
  mkdir -p $user_data/logs
  mkdir -p $user_data/notebooks
}


function freqtrade_wrapper () {
  # TODO Make a makefile so that this is not hard coded
  # Activate the freqtrade virtual environment
  # so that we can run freqtrade
  source $HOME/src/freqtrade/.env/bin/activate
  freqtrade $@
  deactivate
}


function snake_case() {
  echo $1 | sed -r 's/([A-Z])/_\L\1/g' | sed 's/^_//'
}


function with_permission () {
  read -p "$2" -n 1 -r
  echo    # (optional) move to a new line
  if [[ $REPLY =~ ^[Yy]$ ]]
  then
    $1
  fi
}
