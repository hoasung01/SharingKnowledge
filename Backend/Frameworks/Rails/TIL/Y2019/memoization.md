```ruby
  # right way
  def method_name
    @method_name ||= graphql_client.index(
      {
        filter: {
          id: params[:id]
        }
      }
    ).first
  end
```

## Noted
 - we should create an instance to store its value otherwise memoization is useless

```ruby
  # wrong way
  def method_name
    method_name ||= graphql_client.index(
      {
        filter: {
          id: params[:id]
        }
      }
    ).first
  end
```
