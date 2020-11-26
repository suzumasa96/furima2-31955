# テーブル設計

## users テーブル

| Column         | Type       | Options      |
| -------------- | ---------- | -------------|
| name           | string     |  null: false |
| first_name     | string     |  null: false |
| first_name_kana| string     |  null: false |
| last_name      | string     |  null: false |
| last_name_kana | string     |  null: false |
| birthday       | date       |  null: false |
| email          | string     |  null: false, unique:true |
| password       | string     |  null:false  |

### Association

- has_many :items
- has_many :logs

## items テーブル

| Column       | Type       | Options     |
| ------------ | -----------| ------------|
| item_name    | string     | null: false |
| user_id      | string     | null: false |
| introduction | text       | null: false |
| category_id  | integer    | null: false |
| condition_id | integer    | null: false |
| price        | integer    | null: false |

### Association

- belongs_to :user
- has_one    :log

## users_items テーブル

| Column | Type       | Options                        |
| ------ | ---------- | -------------------------------|
| user   | references | null: false, foreign_key: true |
| item   | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :item

## logs テーブル

| Column | Type       | Options                        |
| ------ | ---------- | -------------------------------|
| user   | references | null: false, foreign_key: true |
| item   | references | null: false, foreign_key: true |
| cost   | text       | null: false                    |
| date   | text       | null: false                    |

### Association

- belongs_to :user
- belongs_to :item
- has_one    :shipping

## shippings テーブル

| Column         | Type       | Options                        |
| -------------- | ---------- | -------------------------------|
| post_code      | string     | null: false                    |
| prefecture_id  | integer    | null: false                    |
| city           | string     | null: false                    |
| house_number   | string     | null: false                    |
| tell           | string     | null: false                    |
| log            | references | null: false, foreign_key: true |

### Association

- belongs_to : log