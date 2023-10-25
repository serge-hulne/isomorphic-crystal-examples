# file state.cr

class State
  property count : Int32

  def initialize(
    @count : Int32 = state
  )
  end
end

STATE = State.new(count = 0)
