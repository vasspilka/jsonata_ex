defmodule Jsonata do
  @moduledoc """
  Documentation for `Jsonata`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Jsonata.hello()
      :world

  """
  def hello do
    :world
  end

  def evaluate(template, data) do
    Req.post!("http://localhost:8080", json: %{template: template, data: data}).body
  end
end
