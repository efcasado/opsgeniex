# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Opsgeniex.Api.Incident do
  @moduledoc """
  API calls for all endpoints tagged `Incident`.
  """

  alias Opsgeniex.Connection
  import Opsgeniex.RequestBuilder

  @doc """
  Close Incident
  Closes incident with given identifier

  ### Parameters

  - `connection` (Opsgeniex.Connection): Connection to server
  - `identifier` (String.t): Identifier of incident which could be incident id or tiny id
  - `opts` (keyword): Optional parameters
    - `:identifierType` (String.t): Type of the identifier that is provided as an in-line parameter. Possible values are 'id' or 'tiny. Default is id'
    - `:body` (CloseIncidentPayload): Request payload of closing incident action

  ### Returns

  - `{:ok, Opsgeniex.Model.SuccessResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec close_incident(Tesla.Env.client, String.t, keyword()) :: {:ok, Opsgeniex.Model.ErrorResponse.t} | {:ok, Opsgeniex.Model.SuccessResponse.t} | {:error, Tesla.Env.t}
  def close_incident(connection, identifier, opts \\ []) do
    optional_params = %{
      :identifierType => :query,
      :body => :body
    }

    request =
      %{}
      |> method(:post)
      |> url("/v1/incidents/#{identifier}/close")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {202, Opsgeniex.Model.SuccessResponse},
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
  Create Incident
  Creates a new incident

  ### Parameters

  - `connection` (Opsgeniex.Connection): Connection to server
  - `body` (CreateIncidentPayload): Request payload of created incident
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Opsgeniex.Model.SuccessResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec create_incident(Tesla.Env.client, Opsgeniex.Model.CreateIncidentPayload.t, keyword()) :: {:ok, Opsgeniex.Model.ErrorResponse.t} | {:ok, Opsgeniex.Model.SuccessResponse.t} | {:error, Tesla.Env.t}
  def create_incident(connection, body, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/v1/incidents/create")
      |> add_param(:body, :body, body)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {202, Opsgeniex.Model.SuccessResponse},
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
  Delete Incident
  Deletes an incident using incident id or the tiny id

  ### Parameters

  - `connection` (Opsgeniex.Connection): Connection to server
  - `identifier` (String.t): Identifier of incident which could be incident id or tiny id
  - `opts` (keyword): Optional parameters
    - `:identifierType` (String.t): Type of the identifier that is provided as an in-line parameter. Possible values are 'id' or 'tiny. Default is id'

  ### Returns

  - `{:ok, Opsgeniex.Model.SuccessResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec delete_incident(Tesla.Env.client, String.t, keyword()) :: {:ok, Opsgeniex.Model.ErrorResponse.t} | {:ok, Opsgeniex.Model.SuccessResponse.t} | {:error, Tesla.Env.t}
  def delete_incident(connection, identifier, opts \\ []) do
    optional_params = %{
      :identifierType => :query
    }

    request =
      %{}
      |> method(:delete)
      |> url("/v1/incidents/#{identifier}")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {202, Opsgeniex.Model.SuccessResponse},
      {400, Opsgeniex.Model.ErrorResponse},
      {401, Opsgeniex.Model.ErrorResponse},
      {402, Opsgeniex.Model.ErrorResponse},
      {403, Opsgeniex.Model.ErrorResponse},
      {404, Opsgeniex.Model.ErrorResponse},
      {429, Opsgeniex.Model.ErrorResponse},
      {:default, Opsgeniex.Model.ErrorResponse}
    ])
  end

  @doc """
  Get Incident
  Returns incident with given id, tiny id or alias

  ### Parameters

  - `connection` (Opsgeniex.Connection): Connection to server
  - `identifier` (String.t): Identifier of incident which could be incident id or tiny id
  - `opts` (keyword): Optional parameters
    - `:identifierType` (String.t): Type of the identifier that is provided as an in-line parameter. Possible values are 'id' or 'tiny. Default is id'

  ### Returns

  - `{:ok, Opsgeniex.Model.GetIncidentResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_incident(Tesla.Env.client, String.t, keyword()) :: {:ok, Opsgeniex.Model.ErrorResponse.t} | {:ok, Opsgeniex.Model.GetIncidentResponse.t} | {:error, Tesla.Env.t}
  def get_incident(connection, identifier, opts \\ []) do
    optional_params = %{
      :identifierType => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/v1/incidents/#{identifier}")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Opsgeniex.Model.GetIncidentResponse},
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
  Get Request Status of Incident
  Used to track the status and incident details (if any) of the request whose identifier is given

  ### Parameters

  - `connection` (Opsgeniex.Connection): Connection to server
  - `request_id` (String.t): Universally unique identifier of the questioned request
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Opsgeniex.Model.GetIncidentRequestStatusResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_incident_request_status(Tesla.Env.client, String.t, keyword()) :: {:ok, Opsgeniex.Model.GetIncidentRequestStatusResponse.t} | {:ok, Opsgeniex.Model.ErrorResponse.t} | {:error, Tesla.Env.t}
  def get_incident_request_status(connection, request_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v1/incidents/requests/#{request_id}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Opsgeniex.Model.GetIncidentRequestStatusResponse},
      {400, Opsgeniex.Model.ErrorResponse},
      {401, Opsgeniex.Model.ErrorResponse},
      {402, Opsgeniex.Model.ErrorResponse},
      {403, Opsgeniex.Model.ErrorResponse},
      {404, Opsgeniex.Model.ErrorResponse},
      {429, Opsgeniex.Model.ErrorResponse},
      {:default, Opsgeniex.Model.ErrorResponse}
    ])
  end

  @doc """
  List incidents
  Return list of incidents

  ### Parameters

  - `connection` (Opsgeniex.Connection): Connection to server
  - `query` (String.t): Search query to apply while filtering the incidents.
  - `opts` (keyword): Optional parameters
    - `:offset` (integer()): Start index of the result set (to apply pagination). Minimum value (and also default value) is 0.
    - `:limit` (integer()): Maximum number of items to provide in the result. Must be a positive integer value. Default value is 20 and maximum value is 100
    - `:sort` (String.t): Name of the field that result set will be sorted by
    - `:order` (String.t): Sorting order of the result set

  ### Returns

  - `{:ok, Opsgeniex.Model.ListIncidentsResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec list_incidents(Tesla.Env.client, String.t, keyword()) :: {:ok, Opsgeniex.Model.ErrorResponse.t} | {:ok, Opsgeniex.Model.ListIncidentsResponse.t} | {:error, Tesla.Env.t}
  def list_incidents(connection, query, opts \\ []) do
    optional_params = %{
      :offset => :query,
      :limit => :query,
      :sort => :query,
      :order => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/v1/incidents/")
      |> add_param(:query, :query, query)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Opsgeniex.Model.ListIncidentsResponse},
      {400, Opsgeniex.Model.ErrorResponse},
      {401, Opsgeniex.Model.ErrorResponse},
      {402, Opsgeniex.Model.ErrorResponse},
      {403, Opsgeniex.Model.ErrorResponse},
      {422, Opsgeniex.Model.ErrorResponse},
      {429, Opsgeniex.Model.ErrorResponse},
      {:default, Opsgeniex.Model.ErrorResponse}
    ])
  end
end
