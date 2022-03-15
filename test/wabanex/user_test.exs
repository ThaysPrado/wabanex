defmodule Wabanex.UserTest do
	use Wabanex.DataCase, async: true

	alias Wabanex.User

	describe "changeset/1" do
		test "When all params are valid, return a valid changeset" do
			params = %{name: "Thays", email: "thays@dev.com", password: "123456"}
			response = User.changeset(params)

			assert %Ecto.Changeset {
				valid?: true,
				changes: %{email: "thays@dev.com", name: "Thays", password: "123456"},
				errors: []
			} = response
		end

		test "When there are valid params, return an error" do
			params = %{name: "q", email: "teste@dev.com", password: "123"}

			response = User.changeset(params)

			assert %Ecto.Changeset {
				valid?: false,
				changes: %{email: "teste@dev.com", name: "q", password: "123"},
				errors: [
					name: 
						{"should be at least %{count} character(s)",
						[count: 2, validation: :length, kind: :min, type: :string]},
					password:
						{"should be at least %{count} character(s)",
						[count: 6, validation: :length, kind: :min, type: :string]}
				]
			} = response
		end
	end
end