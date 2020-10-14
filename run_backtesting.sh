function run_freqtrade_backtesting() {
  freqtrade backtesting \
    --strategy-path ~/src/freqtrade-strategies/strategies \
    --strategy HackerNoonStrategy \
    --export t
}

run_freqtrade_backtesting
