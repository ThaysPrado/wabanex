defmodule WabanexWeb.Schema.Types.Root do
  use Absinthe.Schema.Notation

  alias WabanexWeb.Resolvers.User, as: UserResolver
  alias WabanexWeb.Schema.Types

  import_types(Types.User)

  object :root_query do
    field :get_user, type: :user do
      arg(:id, non_null(:uuid4))

      resolve(&UserResolver.get/2)
      # resolve fn params, context -> UserResolver.get(params, context) end
    end
  end
end
