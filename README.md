# ELB × VPC × Fargate マルチ AZ 構成で冗長化する

## 構成

-   Fargate タスク プライベートサブネットに 2 体を維持させる（ECS サービス）

-   ELB マルチ AZ で 公開サブネットに分散配置

-   ELB でマルチ AZ 配置の Fargate タスクにロードバランシング

## デプロイ

```
aws cloudformation deploy \
  --template-file ./template.yaml \
  --stack-name my-ecs-stack \
  --capabilities CAPABILITY_IAM

or

aws cloudformation create-stack \
  --template-body file://template.yaml \
  --stack-name my-ecs-stack \
  --capabilities CAPABILITY_IAM

# 更新
aws cloudformation update-stack \
  --template-body file://template.yaml \
  --stack-name my-ecs-stack \
  --capabilities CAPABILITY_IAM
```
