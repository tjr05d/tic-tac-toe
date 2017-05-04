## Challenge for May 4th, 2017

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

#### The Cell
Now that we have all of our `Player` class code written, we are going to move on to defining our next class. The `Cell` class.

The skeleton spec for this class can be found in `spec/cell_spec.rb`, This is a pretty small and simple class that doesn't include a ton of functionality so there are only 2 tests to write.

Let's start:
Our first test is
```ruby
context "#initialize" do
  it "is initialized with a value of '' by default"
  #more code...
```
So we expect when a `Cell` is initialize it will have an empty string as the default value

```ruby
it "is initialized with a value of '' by default" do
  cell = Cell.new
  expect(cell.value).to eq ''
end
```

Now let's go to the command line and run the spec
`rspec spec/cell_spec.rb`

We should get an error, and that makes sense because we haven't written any of the functionality that will make the test pass

```
NoMethodError:
      undefined method `value' for #<TicTacToe::Cell:0x007fd4193104a8>
```
When we call `Cell.new` a new instance of a `Cell` will be created, but if we want to somthing to happen when `.new` is called, we can define this behavior in an `initialize` method

```ruby
class Cell
  def initialize

  end
```

This `initialize` is where we can define the default `value` for when an `.new` is called

```ruby
class Cell

  def initialize(value="")
    @value = value
  end

end
```
Notice in the argument that method is accepting.
```ruby
initialize(value="")
```
What is this code saying?
If the `.new` method is passed an argument, store that argument in the local variable `value`, if nothing is passed, store `''` in the local variable `value`.

This allows the method to be called 2 ways:
`Cell.new` where `value == ''`
`Cell.new("X")` where `value == "X"`

If we run the test again at this point we still get a failure though
```
NoMethodError:
       undefined method `value' for #<TicTacToe::Cell:0x007fc713b1bc28 @value="">
```
No method value, so lets define that method by adding an `attr_accessor`
```ruby
class Cell
  attr_accessor :value

  def initialize(value="")
    @value = value
  end

end
```
Now we have a getter and a setter method for value and the test passes :)

One more test to write and we are done with the challenge for today, this test covers the second case for if we want to initialize a `Cell` with a value that we have pass it.

```ruby
it "can be initialized with an X" do
  cell = Cell.new
  expect(cell.value).to eq "X"
end
```
This test should pass right away as we have already given our initialize method the functionality to accept and argument and set the instance variable `@value` to that value.

That's all for today... TBC :) 
