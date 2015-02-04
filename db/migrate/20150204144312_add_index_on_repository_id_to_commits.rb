class AddIndexOnRepositoryIdToCommits < ActiveRecord::Migration
  self.disable_ddl_transaction!

  def up
    execute "CREATE UNIQUE INDEX CONCURRENTLY index_commits_on_repository_id ON commits(repository_id)"
  end

  def down
    execute "DROP INDEX index_commits_on_repository_id"
  end
end

