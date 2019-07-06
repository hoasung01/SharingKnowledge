module Computer
  module Science
    module TIL
      module Y2019
        def compiler_vs_interpreter_vs_transpiler
          differences = {
            compiler: Compiler.new('same as book translation, they need to read a whole book then translate it')
            intepreter: Interpreter.new('same as translator, they translate one by one sentence')
            transpiler: Transpiler.new('source to source compiler, translate code from one language to another')
          }
        end

        Compiler = Struct.new(:real_life)
        Interpreter = Struct.new(:real_life)
        Transpiler = Struct.new(:real_life)
      end
    end
  end
end