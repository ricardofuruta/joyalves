MoneyRails.configure do |config|
  # Register a custom currency
  #
  config.register_currency = {
    :priority            => 1,
    :iso_code            => "BRL",
    :name                => "Reais",
    :symbol              => "R$",
    :symbol_first        => true,
    :subunit             => "Centavos",
    :subunit_to_unit     => 10,
    :thousands_separator => ".",
    :decimal_mark        => ","
  }
  config.default_currency = :brl
end
