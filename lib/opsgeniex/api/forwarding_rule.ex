# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Opsgeniex.Api.ForwardingRule do
  @moduledoc """
  API calls for all endpoints tagged `ForwardingRule`.
  """

  alias Opsgeniex.Connection
  import Opsgeniex.RequestBuilder

  @doc """
  Create Forwarding Rule
  Creates a new forwarding rule

  ### Parameters

  - `connection` (Opsgeniex.Connection): Connection to server
  - `body` (CreateForwardingRulePayload): Request payload to created forwarding rule
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Opsgeniex.Model.CreateForwardingRuleResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec create_forwarding_rule(Tesla.Env.client, Opsgeniex.Model.CreateForwardingRulePayload.t, keyword()) :: {:ok, Opsgeniex.Model.ErrorResponse.t} | {:ok, Opsgeniex.Model.CreateForwardingRuleResponse.t} | {:error, Tesla.Env.t}
  def create_forwarding_rule(connection, body, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/v2/forwarding-rules")
      |> add_param(:body, :body, body)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {201, Opsgeniex.Model.CreateForwardingRuleResponse},
      {400, Opsgeniex.Model.ErrorResponse},
      {401, Opsgeniex.Model.ErrorResponse},
      {402, Opsgeniex.Model.ErrorResponse},
      {403, Opsgeniex.Model.ErrorResponse},
      {422, Opsgeniex.Model.ErrorResponse},
      {429, Opsgeniex.Model.ErrorResponse},
      {:default, Opsgeniex.Model.ErrorResponse}
    ])
  end

  @doc """
  Delete Forwarding Rule
  Deletes forwarding rule with given identifier

  ### Parameters

  - `connection` (Opsgeniex.Connection): Connection to server
  - `identifier` (String.t): Identifier of the forwarding rule which could be forwarding rule 'id' or 'alias'
  - `opts` (keyword): Optional parameters
    - `:identifierType` (String.t): Type of the identifier that is provided as an in-line parameter. Possible values are 'id' or 'alias'

  ### Returns

  - `{:ok, Opsgeniex.Model.SuccessResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec delete_forwarding_rule(Tesla.Env.client, String.t, keyword()) :: {:ok, Opsgeniex.Model.ErrorResponse.t} | {:ok, Opsgeniex.Model.SuccessResponse.t} | {:error, Tesla.Env.t}
  def delete_forwarding_rule(connection, identifier, opts \\ []) do
    optional_params = %{
      :identifierType => :query
    }

    request =
      %{}
      |> method(:delete)
      |> url("/v2/forwarding-rules/#{identifier}")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Opsgeniex.Model.SuccessResponse},
      {400, Opsgeniex.Model.ErrorResponse},
      {401, Opsgeniex.Model.ErrorResponse},
      {402, Opsgeniex.Model.ErrorResponse},
      {403, Opsgeniex.Model.ErrorResponse},
      {404, Opsgeniex.Model.ErrorResponse},
      {422, Opsgeniex.Model.ErrorResponse},
      {429, Opsgeniex.Model.ErrorResponse},
      {:default, Opsgeniex.Model.ErrorResponse}
    ])
  end

  @doc """
  Get Forwarding Rule
  Returns forwarding rule with given id or alias

  ### Parameters

  - `connection` (Opsgeniex.Connection): Connection to server
  - `identifier` (String.t): Identifier of the forwarding rule which could be forwarding rule 'id' or 'alias'
  - `opts` (keyword): Optional parameters
    - `:identifierType` (String.t): Type of the identifier that is provided as an in-line parameter. Possible values are 'id' or 'alias'

  ### Returns

  - `{:ok, Opsgeniex.Model.GetForwardingRuleResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_forwarding_rule(Tesla.Env.client, String.t, keyword()) :: {:ok, Opsgeniex.Model.ErrorResponse.t} | {:ok, Opsgeniex.Model.GetForwardingRuleResponse.t} | {:error, Tesla.Env.t}
  def get_forwarding_rule(connection, identifier, opts \\ []) do
    optional_params = %{
      :identifierType => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/v2/forwarding-rules/#{identifier}")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Opsgeniex.Model.GetForwardingRuleResponse},
      {400, Opsgeniex.Model.ErrorResponse},
      {401, Opsgeniex.Model.ErrorResponse},
      {402, Opsgeniex.Model.ErrorResponse},
      {403, Opsgeniex.Model.ErrorResponse},
      {404, Opsgeniex.Model.ErrorResponse},
      {422, Opsgeniex.Model.ErrorResponse},
      {429, Opsgeniex.Model.ErrorResponse},
      {:default, Opsgeniex.Model.ErrorResponse}
    ])
  end

  @doc """
  List Forwarding Rules
  Returns list of forwarding rules

  ### Parameters

  - `connection` (Opsgeniex.Connection): Connection to server
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Opsgeniex.Model.ListForwardingRulesResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec list_forwarding_rules(Tesla.Env.client, keyword()) :: {:ok, Opsgeniex.Model.ErrorResponse.t} | {:ok, Opsgeniex.Model.ListForwardingRulesResponse.t} | {:error, Tesla.Env.t}
  def list_forwarding_rules(connection, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v2/forwarding-rules")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Opsgeniex.Model.ListForwardingRulesResponse},
      {400, Opsgeniex.Model.ErrorResponse},
      {401, Opsgeniex.Model.ErrorResponse},
      {402, Opsgeniex.Model.ErrorResponse},
      {403, Opsgeniex.Model.ErrorResponse},
      {422, Opsgeniex.Model.ErrorResponse},
      {429, Opsgeniex.Model.ErrorResponse},
      {:default, Opsgeniex.Model.ErrorResponse}
    ])
  end

  @doc """
  Update Forwarding Rule
  Update forwarding rule with given rule id or alias

  ### Parameters

  - `connection` (Opsgeniex.Connection): Connection to server
  - `identifier` (String.t): Identifier of the forwarding rule which could be forwarding rule 'id' or 'alias'
  - `body` (UpdateForwardingRulePayload): Request payload of update forwarding rule action
  - `opts` (keyword): Optional parameters
    - `:identifierType` (String.t): Type of the identifier that is provided as an in-line parameter. Possible values are 'id' or 'alias'

  ### Returns

  - `{:ok, Opsgeniex.Model.SuccessResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec update_forwarding_rule(Tesla.Env.client, String.t, Opsgeniex.Model.UpdateForwardingRulePayload.t, keyword()) :: {:ok, Opsgeniex.Model.ErrorResponse.t} | {:ok, Opsgeniex.Model.SuccessResponse.t} | {:error, Tesla.Env.t}
  def update_forwarding_rule(connection, identifier, body, opts \\ []) do
    optional_params = %{
      :identifierType => :query
    }

    request =
      %{}
      |> method(:put)
      |> url("/v2/forwarding-rules/#{identifier}")
      |> add_param(:body, :body, body)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Opsgeniex.Model.SuccessResponse},
      {400, Opsgeniex.Model.ErrorResponse},
      {401, Opsgeniex.Model.ErrorResponse},
      {402, Opsgeniex.Model.ErrorResponse},
      {403, Opsgeniex.Model.ErrorResponse},
      {404, Opsgeniex.Model.ErrorResponse},
      {422, Opsgeniex.Model.ErrorResponse},
      {429, Opsgeniex.Model.ErrorResponse},
      {:default, Opsgeniex.Model.ErrorResponse}
    ])
  end
end
