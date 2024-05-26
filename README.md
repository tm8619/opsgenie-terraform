# opsgenie-terraform

opsgenie を terraform でやるサンプル

## api_key の設定

terraform/terraform.tfstate ファイルの APIKey を`Settings -> API key management`から発行

apply の為には、APIKey に権限をフルで付ける必要がある

<img width="1501" alt="スクリーンショット 2024-05-26 21 48 55" src="https://github.com/tm8619/opsgenie-terraform/assets/46556788/b73d7aff-ded7-4c44-b7c0-49ec69ddf3ca">

## 悩みポイント

- team の member が id の昇順に並び替えないと差分になってしまう。そのため、 member の id を参照でやると後で直さないといけない。恐らく対応は以下のどちらか

  - set を対応させる
  - opsgenie_team_member みたいなリソースを作る

- integration で発行された API Key が tfstate に乗ってくるので、tfstate を github に上げる運用だと厳しい。

## 制約で出来ていないこと

- 無料プランだと escalation の細かいルールが作れず動作確認できなかったので、基本的なもののみ

## 今後

module 使って、user/team/schedules あたりを一元管理できるようにしたい
