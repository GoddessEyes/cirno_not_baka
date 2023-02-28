defmodule CirnoNotBaka.Repo.Migrations.Notes do
  use Ecto.Migration

  def change do
    create table(:notes) do
      add :title, :string
      add :text, :string
  end
end
