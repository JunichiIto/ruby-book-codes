class User < ApplicationRecord
  def facebook_username
    info = facebook_auth.auth_info.info
    # ログに変数info,nicknameの値を出力する
    logger.debug "[DEBUG] info.nickname : #{info.nickname}"
    info.nickname
  end
end
