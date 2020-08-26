# README

# テーブル設計

## users テーブル

| Column    | Type       | Options     |
| --------- | ---------- | ----------- |
| nickname  | string     | null: false |
| email     | string     | null: false |
| password  | string     | null: false |
| name      | string     | null: false |
| birthday  | integer    | null: false |

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
| explaination| string     | null: false |
| image       | string     | null: false |
| user        | reference  | null: false, foreign_key: true |
| category    | string     | null: false |
| condition   | string     | null: false |
| deli_money  | string     | null: false |
| prefecture  | string     | null: false |
| deli_time   | string     | null: false |

### Association

- has_many   :comments
- belongs_to :users
- has_many   :favorites
- has_one    :buying


## comments テーブル

| Column    | Type       | Options     |
| --------- | ---------- | ----------- |
| user      | reference  | null: false, foreign_key: true |
| item      | reference  | null: false, foreign_key: true |
| text      | stirng     | null: false |

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
- belongs_to :addresses
- belongs_to :items


## addresses テーブル

| Column    | Type       | Options     |
| --------- | ---------- | ----------- |
| prefecture| string     | null: false, foreign_key: true |
| city      | string     | null: false |
| postal_num| integer    | null: false |
| house_num | integer    | null: false |
| building  | string     |             |
| tel_num   | integer    | null: false |


### Association

- has_one :buying




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