Types::QueryType = GraphQL::ObjectType.define do
  name "Query"

  field :posts, types[Types::PostType] do
    description "List of posts"
    resolve ->(_obj, _args, _ctx) { Post.all }
  end

  field :post, Types::PostType do
    argument :id, !types.ID
    description "Find a Post by ID"
    resolve ->(_obj, args, _ctx) { Post.find(args[:id]) }
  end
end
