# opsgenie-terraform

opsgenie を terraform でやるサンプル

## api_key の設定

terraform/terraform.tfstate ファイルの APIKey を`Settings -> API key management`から発行

apply の為には、APIKey に権限をフルで付ける必要がある

<img width="1501" alt="スクリーンショット 2024-05-26 21 48 55" src="https://github.com/tm8619/opsgenie-terraform/assets/46556788/b73d7aff-ded7-4c44-b7c0-49ec69ddf3ca">

## 悩みポイント

- team の member を id の昇順に並び替えないと差分になってしまう。

## 今後

module 使って、user/team/schedules あたりを一元管理できるようにしたい
