##Challenge for May 4th, 2017

Last night we started with some TDD using RSpec, and began writing tests for our `Player` class. The task for today is to make the final test pass and to make all of the `Cell` specs pass.

Before starting with the walkthrough, I encourage you to try to do it on your own just using google and documentation, but if you need some help or a little head start the steps are below

#### Finishing the Player spec
At this point we have made 3 out of 4 of the specs pass for the `Player` class. The last spec that we have is that a player should have a name attribute listed below

```ruby
context "#name" do
  it "returns the players name"
end
```

First we need to fill out the spec:
```ruby
context "#name" do
  it "returns the players name" do
    input = {name: "Tim", symbol: "X"}
    player = Player.new(input)
    expect(player.name).to eq "Tim"
  end
end
```

Now let's run the test from the command line and it should fail
```
#note: your line number may be different than 25
rspec spec/player_spec.rb:25
```
The test should fail with a no method error,
```
undefined method `name' for #<TicTacToe::Player:0x007ffaca2f9578 @name="Tim", @symbol="X">
```

To fix this error we need to add the getter and setter method of `name` to the class. We do this through an `attr_accessor`

```ruby
class Player
  attr_accessor :symbol, :name
  #more code....
```
