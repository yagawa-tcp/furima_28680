# README

# テーブル設計

## users テーブル

| Column    | Type       | Options     |
| --------- | ---------- | ----------- |
| nickname  | string     | null: false |
| email     | string     | null: false |
| password  | string     | null: false |
| first_name| string     | null: false |
| family_name| string     | null: false |
| first_huri| string     | null: false |
| family_huri| string     | null: false |

| birthday  | date       | null: false |

### Association

- has_many   :items
- has_many   :favorites
- has_many   :comments
- has_one    :buying


## items テーブル

| Column      | Type       | Options     |
| ----------- | ---------- | ----------- |
| pro_name    | string     | null: false |
| price       | integer    | null: false |
| explaination| text       | null: false |
| image       | string     | null: false |
| user        | reference  | null: false, foreign_key: true |
| category_id | string     | null: false |
| condition_id| string     | null: false |
| deli_money_id| integer   | null: false |
| prefecture_id| string    | null: false |
| deli_time_id| string     | null: false |

### Association

- has_many   :comments
- belongs_to :users
- has_many   :favorites
- has_many   :buying


## comments テーブル

| Column    | Type       | Options     |
| --------- | ---------- | ----------- |
| user      | reference  | null: false, foreign_key: true |
| item      | reference  | null: false, foreign_key: true |
| text      | text       | null: false |

### Association

- belongs_to :users
- belongs_to :items


## favorites テーブル

| Column    | Type       | Options     |
| --------- | ---------- | ----------- |
| user      | reference  | null: false, foreign_key: true |
| item      | reference  | null: false, foreign_key: true |

### Association

- belongs_to :users
- belongs_to :items


## buying テーブル

| Column    | Type       | Options     |
| --------- | ---------- | ----------- |
| user      | reference  | null: false, foreign_key: true |
| item      | reference  | null: false,foreign_key: true |

### Association

- belongs_to :users
- has_one    :addresses
- belongs_to :items


## addresses テーブル

| Column    | Type       | Options     |
| --------- | ---------- | ----------- |
| prefecture_id| string     | null: false, foreign_key: true |
| city      | string     | null: false |
| postal_num| string     | null: false |
| house_num | string     | null: false |
| building  | string     |             |
| tel_num   | integer    | null: false |


### Association

- belongs_to :buying




This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# テーブルコピペ

| Column    | Type       | Options     |
| --------- | ---------- | ----------- |
|           |            |             |
|           |            |             |
|           |            |             |
|           |            |             |


### Association

-
-
-