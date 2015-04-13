require "simplecov_sample/version"

module SimplecovSample
  class Sample
    def initialize(name = "")
      @name = name
    end

    [:test1, :test2, :test3].each do |method_name|
      class_eval <<-RUBY_EVAL, __FILE__, __LINE__ + 1
        def #{method_name}()    # def test1()
          "#{method_name.to_s}" #   "test1"
        end                     # end
      RUBY_EVAL
    end

    class_eval do
      def test_proc1
        "test_proc1"
      end
    end

    [:test4, :test5, :test6].each do |method_name|
      define_method(method_name) do
        method_name.to_s
      end
    end

    def name(upcase = false)
      if upcase
        @name.upcase
      else
        @name
      end
    end

    def name2(upcase = false)
      upcase ? @name.upcase : @name
    end

    def name3(upcase = false)
      return @name.upcase if upcase
      @name
    end

    def name4(count = 1)
      case count
      when 1
        @name
      when 2
        @name * 2
      else
        ""
      end
    end

    def mapped(enum)
      enum.map do
        1
      end
    end

    def mapped2(enum)
      enum.map { 2 }
    end
  end
end
