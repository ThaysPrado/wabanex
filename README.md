# Wabanex
## Gerencie e acompanhe seus treinos na academia
Projeto desenvolvido na Next Level Week - Together, promovida pela Rocketseat

## ✨ Tecnologias
Esse projeto foi desenvolvido com as seguintes tecnologias:

- [Elixix](https://elixir-lang.org/)
- [Phoenix](https://phoenixframework.org/)
- [GraphQL](https://graphql.org)

## 🚀 Como executar
- Clone o repositório
- Instale o phoenix `mix archive.install hex phx_new 1.5.9`
- Instale as dependencias do projeto `mix deps.get`
- Instale a database e rode as migrations `mix ecto.setup`
- Inicie o servidor do phoenix `mix phx.server`
- Por fim, caso precise você pode alterar as configurações do banco de dados pelo arquivo `dev.exs` e no arquivo `config/test.exs`

Por fim, a aplicação estará disponível em `http://localhost:4000`
 
## 💻 Queries

### Criar Usuario
```
mutation {
  createUser(input: {
    name: "webdev",
    email: "web@dev.com",
    password: "123"
  }) {
    id
    name
  }
}
```

### Create Training
```
mutation {
  createTraining(input: {
    endDate: "2021-07-10",
    startDate:"2021-06-23",
    userId: "e226e803-4bbd-4b70-bf8b-8412f4dd4aa2",
    exercises: [
    	{
        name: "Triceps Banco",
        youtubeVideoUrl: "www.google.com",
        repetitions: "3x15",
        protocolDescription: "drop-set"
      }
  	]
  }){
    id
    exercises {
      id,
      name
    }
  }
}
```

### Get User and Training
```
{
  getUser(id: "e226e803-4bbd-4b70-bf8b-8412f4dd4aa2") {
    email
    trainings {
      id
      exercises {
        name
        repetitions
      }
    }
  }
}
```

## 📙 Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
