# Opsgeniex

> [!NOTE] 
> This package was created with the [OpenAPI code generator](https://openapi-generator.tech/) and using the [OpsGenie OpenAPI Specification](https://github.com/opsgenie/opsgenie-oas).

`Opsgeniex` is a client library for the Opsgenie REST API.


## Installation

Add `opsgeniex` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:opsgeniex, "~> 1.0.0"}
  ]
end
```


## Usage

```elixir
client = Opsgeniex.Connection.new(base_url: "https://api.eu.opsgenie.com", api_key: "your_api_key")

{:ok, response} = Opsgeniex.Api.Team.list_teams(client)
```