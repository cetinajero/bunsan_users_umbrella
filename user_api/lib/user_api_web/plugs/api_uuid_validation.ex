defmodule UserApiWeb.UUIDValidation do
    import Plug.Conn

    @api_key "2b32edd8-afdf-44c3-aa4a-f478cc71b516"

    def init(opts), do: opts

    def call(conn, _opts) do
        case read_header_value(conn, "x-api-key") do
            {:ok, conn} -> conn
            {:error, reason} -> conn |> send_resp(400, reason) |> halt
        end
    end

    def read_header_value(conn, header) do
        case get_req_header(conn, header) do
            [@api_key] -> 
                conn = assign(conn, String.to_atom(header), @api_key)
                {:ok, conn}
            [value] -> {:error, "El valor '#{value}' no es válido para el header #{header}"}
        end
    end
end