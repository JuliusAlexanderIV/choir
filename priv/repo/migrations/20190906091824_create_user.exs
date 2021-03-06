defmodule Choir.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:user) do
      add(:email, :string, null: false)
      add(:first_name, :string, null: false)
      add(:last_name, :string, null: false)
      add(:password_hash, :string, null: false)
      add(:uid, :string, null: false)

      timestamps()
    end

    create(unique_index(:user, [:email]))
  end
end
