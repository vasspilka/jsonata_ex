defmodule Jsonata do
  @moduledoc """
  JSONata is a JSON query and transformation language.

  It can be very usefull for [ETL](https://en.wikipedia.org/wiki/Extract,_transform,_load) pipelines that have JSON as input and output.

  More info about JSONata can be found on their [website](https://jsonata.org/)
  """

  @doc """
  Evaluate the following jsonata expression


  ## Examples

      iex> Jsonata.evaluate(~s({"name": firstName & ' ' & surname}), %{firstName: "bob", surname: "doe"})
      %{"name" => "bob doe"}


  """
  def evaluate(template, data) do
    Req.post!("http://localhost:8080", json: %{template: template, data: data}).body
  end
end
