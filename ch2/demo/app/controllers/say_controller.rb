class SayController < ApplicationController
  def hello
    # Broken on purpose, for testing
    @time = Time.know
  end

  def goodbye
  end
end
