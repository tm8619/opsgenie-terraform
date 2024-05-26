# opsgenie-terraform

opsgenie を terraform でやるサンプル

## api_key の設定

terraform/terraform.tfstate ファイルの APIKey を`Settings -> API key management`から発行

apply の為には、APIKey に権限をフルで付ける必要がある

<img width="1501" alt="スクリーンショット 2024-05-26 21 48 55" src="https://github.com/tm8619/opsgenie-terraform/assets/46556788/b73d7aff-ded7-4c44-b7c0-49ec69ddf3ca">

## 今後
module使って、user/team/schedulesあたりを一元管理できるようにしたい
