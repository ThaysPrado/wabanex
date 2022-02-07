defmodule WabanexWeb.Resolvers.User do
  def get(%{id: user_id}, context), do: Wabanex.Users.Get.call(user_id)
end
