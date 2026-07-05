# aws-static-site

Terraform で構築する静的サイト (S3 + CloudFront OAC)。

## 構成

- **S3**: 完全非公開バケット (パブリックアクセス全ブロック)
- **CloudFront**: OAC 経由でのみ S3 を参照、HTTPS リダイレクト
- **State**: ローカル (学習用MVP。将来 S3 バックエンドへ移行予定)

## 使い方

```bash
# 認証情報を設定済みであること (aws configure など)
terraform init
terraform plan
terraform apply

# サイトURLを表示
terraform output site_url
```

CloudFront のデプロイ完了まで apply 後 5〜10 分かかることがあります。

## 課金リソース削除

```bash
terraform destroy
```

## コスト目安

S3 数円未満 + CloudFront はリクエスト/転送量課金 (個人閲覧レベルならほぼ 0 円)。
放置しても固定費は発生しない構成です。
