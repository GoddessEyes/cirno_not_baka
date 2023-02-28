defmodule CirnoNotBaka.Bot do
  @bot :cirno_not_baka

  use ExGram.Bot,
    name: @bot,
    setup_commands: true

  command("start")
  command("help", description: "Print the bot's help")

  middleware(ExGram.Middleware.IgnoreUsername)

  @spec bot :: :cirno_not_baka
  def bot(), do: @bot

  def handle({:command, :start, _msg}, context) do
    answer(context, "Hi")
  end

  def handle({:command, :help, _msg}, context) do
    answer(context, "Here is your help:")
  end
end
