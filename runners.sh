config=~/src/freqtrade-strategies/config.json
data_dir=~/src/freqtrade/user_data/data/binance
hyperopt=HackerNoonHyperOpt
hyperopt_loss=SharpeHyperOptLossDaily
hyperopt_path=~/src/freqtrade-strategies/hyperopts
strategy=HackerNoonStrategy
strategy_path=~/src/freqtrade-strategies/strategies
user_data_dir=~/src/freqtrade/user_data


function run_freqtrade_hyperopt() {
  freqtrade hyperopt \
    --config $config \
    --datadir $data_dir \
    --hyperopt-path $hyperopt_path \
    --hyperopt $hyperopt \
    --hyperopt-loss $hyperopt_loss \
    --strategy $strategy \
    --strategy-path $strategy_path \
    --user-data-dir $user_data_dir
}


function run_freqtrade_backtesting() {
  freqtrade backtesting \
    --config $config \
    --datadir $data_dir \
    --export t \
    --strategy $strategy \
    --strategy-path $strategy_path \
    --user-data-dir $user_data_dir
}


function run_freqtrade_bot() {
  freqtrade trade \
    --config $config \
    --datadir $data_dir \
    --strategy $strategy \
    --strategy-path $strategy_path \
    --user-data-dir $user_data_dir
}
