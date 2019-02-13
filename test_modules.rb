module Nameable
    def set_name(new_name)
      @name = new_name
    end

    def here
      :in_module
    end
  end

  def test_cant_instantiate_modules
    # assert_raise(___) do
      Nameable.new
    # end
  end

  test_cant_instantiate_modules