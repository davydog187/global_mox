# GlobalMox
Application for testing with the [Mox](https://hexdocs.pm/mox/Mox.html) library in global mode.

## Problems to explore
- GenServer's starting in the Application supervisor hitting mocks
  - Possibly avoid this by a leveraging `mix test --no-start`
- Exploring other means for process collaboration

## References
- https://virviil.github.io/2016/10/26/elixir-testing-without-starting-supervision-tree/
- https://medium.com/flatiron-labs/til-how-to-test-genservers-with-mox-eb04be3134bd
