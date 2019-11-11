class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,#パスワードの正確性を検証
         :registerable,#ユーザー登録や編集、削除
         :recoverable,#パスワードをリセット
         :rememberable,#ログイン情報の保存
         :trackable,#サインインの回数や時間などの保存
         :validatable#emailのフォーマットなどのバリデーション

  has_many :post_images,dependent: :destroy
  has_many :post_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  attachment :profile_image
end