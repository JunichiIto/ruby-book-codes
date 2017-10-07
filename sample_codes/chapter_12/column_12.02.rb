# コラム：ツール使ったコードレビューの自動化
# タスクの説明を入れる
desc 'テスト用のタスクです。'
task :hello_world do
  puts 'Hello, world!'
end


# 名前空間を使ってタスクをグループ分けする
namespace :my_tasks do
  desc 'テスト用のタスクです。'
  task :hello_world do
    puts 'Hello, world!'
  end
end
