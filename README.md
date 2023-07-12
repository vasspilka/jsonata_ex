# Jsonata

 JSONata is a JSON query and transformation language.

 It can be very usefull for [ETL](https://en.wikipedia.org/wiki/Extract,_transform,_load) pipelines that have JSON as input and output.

 More info about JSONata can be found on their [website](https://jsonata.org/)
 
 
## Requirements

In addition to elixir this library requires the host machine to have [bun](https://bun.sh/) installed.

## Usage

JSONata is a very expressive language, in order to use this library you first have to learn it, a good place to start is [here](https://docs.jsonata.org/overview.html)

To evaluate a JSONata expression in your elixir project first add
jsonata to your dependencies.

```elixir
  {:jsonata, "~> 0.1.0"}
```

And then call the evaluate function

```elixir

template = """
{
  "name": FirstName & " " & Surname,
  "mobile": Phone[type = "mobile"].number
}
"""

data = """
{
  "FirstName": "Fred",
  "Surname": "Smith",
  "Age": 28,
  "Address": {
    "Street": "Hursley Park",
    "City": "Winchester",
    "Postcode": "SO21 2JN"
  },
  "Phone": [
    {
      "type": "home",
      "number": "0203 544 1234"
    },
    {
      "type": "office",
      "number": "01962 001234"
    },
    {
      "type": "office",
      "number": "01962 001235"
    },
    {
      "type": "mobile",
      "number": "077 7700 1234"
    }
  ]
}
"""
  
Jsonata.evaluate(template, data)
```
