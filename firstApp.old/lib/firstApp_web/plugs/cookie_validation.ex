defmodule FirstAppWeb.CookieValidation do
    import Plug.Conn

    @uuid "204b4a73-d816-435f-a8e4-ab57f63fc90b"

    def init(opts), do: opts

    def call(conn, _opts) do
        case read_header(conn, "x-api-key") do
            {:ok, conn} -> conn
            {:error, reason} ->
                conn
                    |> send_resp(400, reason)
                    |> halt
        end
    end

    def read_header(conn, header) do
        case get_req_header(conn, header) do
            [@uuid] ->
                conn = assign(conn, String.to_atom(header), @uuid)
                {:ok, conn}
            _ ->
                {:error, "El valor '#{value}' no es válido para el atributo #{header}"}
        end
    end
end
