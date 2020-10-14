function run_freqtrade_hyperopt() {
  freqtrade hyperopt \
    --hyperopt-path ~/src/freqtrade-strategies/hyperopts \
    --hyperopt HackerNoonHyperopt \
    --hyperopt-loss SharpeHyperOptLossDaily \
    --strategy-path ~/src/freqtrade-strategies/strategies \
    --strategy HackerNoonStrategy
}

run_freqtrade_hyperopt
