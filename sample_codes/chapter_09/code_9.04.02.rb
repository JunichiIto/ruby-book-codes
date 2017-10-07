# 大量のユーザーにメールを送信する（例外が起きても最後まで続行する）
users.each do |user|
  begin
    # メール送信を実行する
    send_mail_to(user)
  rescue => e
    # 例外のクラス名、エラーメッセージ、バックトレースをターミナルに出力
    # （ログファイルがあればそこに出力する方がベター）
    puts "#{e.class}: #{e.message}"
    puts e.backtrace
  end
end
