
### News

#### `inspectdf` 0.0.2.9000

  - `include_na` option for `inspect_imb()`. Categorical columns that
    are 100% missing, or constant are underlined in plot for easier
    comprehension.
  - Points and whiskers changed to coloured bands for `inspect_cor()`
    plots of single dataframe. These are easier to see when bands are
    small. Points changed to bars for `inspect_cor()` comparison plots -
    this makes it easier to see smaller differences in correlations.
  - `NA` correlations omitted from `inspect_cor()` comparison when
    plotted. Ordering of correlations reversed to consistent with
    returned tibble.

#### `inspectdf` 0.0.2

  - `show_plot()` function (`show_plot` argument in `inspect_` functions
    will be dropped in a future version)
  - `high_cardinality` argument in `show_plot()` for combining unique or
    near-unique categories for plotting `inspect_cat()`.
  - `progress` bars shown when processing larger datasets
  - Improvements to plots throughout

#### `inspectdf` 0.0.1

  - Initial CRAN release
