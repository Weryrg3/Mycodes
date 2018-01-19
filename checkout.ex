defmodule Tudo do
  defmodule Ecomerce.Chekout do
    def total_cost(price, tax_rate) do
      price * (tax_rate + 1)    # Ex: 100 * (0.2 + 1) = 120.0 \ Mylogic: 100 + (100 * 0.2)
    end
  end
  
  defmodule Checkout do
    def total_cost(price, tax_rate) when price >= 0 and tax_rate >= 0 do
      price * (tax_rate + 1)
    end
  end
end
