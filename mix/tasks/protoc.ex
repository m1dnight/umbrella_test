defmodule Mix.Tasks.Compile.Protoc do
  @moduledoc "I compile the protobuf files before compiling the project."
  @shortdoc "Compiles protobuf files"

  use Mix.Task.Compiler

  def run(_args) do
    shell = Mix.shell()

    shell.info("running task")
    shell.info(inspect(Mix.Project.config()))
    generate_path = Mix.Project.config()[:generate_destination]
    generate_file(generate_path)
    :ok
  end

  defp generate_file(destination) do
    content = """
    defmodule Generated do
      defstruct name: "world"
      def hello() do
      "hello world"
      end
    end
    """

    File.write!(destination, content)
  end
end
