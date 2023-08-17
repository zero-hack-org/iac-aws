![Static Badge](https://img.shields.io/badge/Terraform-%235C4EE5)
![Static Badge](https://img.shields.io/badge/Terragrunt-%235C4EE5)
<br/>
![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/zero-hack-org/iac-aws)
![GitHub repo size](https://img.shields.io/github/repo-size/zero-hack-org/iac-aws)
<br/>
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
<br/>
![Twitter Follow](https://img.shields.io/twitter/follow/y_morimoto_dev?style=social)

## iac-aws

IaC for AWS resource

### Environment Settings

| Key                   | Description                |
| --------------------- | -------------------------- |
| AWS_ACCESS_KEY_ID     | Your aws access key id     |
| AWS_SECRET_ACCESS_KEY | Your aws secret access key |
| AWS_DEFAULT_REGION    | ap-northeast-1             |

[Terraform Reference](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#environment-variables)

#### Sample env file

1. Create aws.env file

   - `$ touch .env/aws.env`

2. Edit aws.env for docker bind mount

   ```env
    // aws.env
    AWS_ACCESS_KEY_ID=1234567890
    AWS_SECRET_ACCESS_KEY=1234567890
    AWS_DEFAULT_REGION=ap-northeast-1
   ```

#### Docker image arguments for version

| ArgumentName       | Description                                                                                                |
| ------------------ | ---------------------------------------------------------------------------------------------------------- |
| AWSCLI_VERSION     | AWS Cli ([Release](https://raw.githubusercontent.com/aws/aws-cli/v2/CHANGELOG.rst))                        |
| TERRAFORM_VERSION  | Terraform ([Release](https://releases.hashicorp.com/terraform))                                            |
| TERRAGRUNT_VERSION | Terragrunt ([Release](https://terragrunt.gruntwork.io/docs/getting-started/supported-terraform-versions/)) |

### Terragrunt plan or apply ...command

How execute terragrunt command

#### 1. Docker build and run container

```bash
# Or docker-compose up --build
$ make b_u
```

### 2. Exec terragrunt container

```bash
# Or docker-compose exec {container-name} /bin/bash
$ make e
```

### 3. Execute terragrunt command

```bash

$ cd /app

# select project
$ cd common, sandbox...

$ terragrunt run-all plan

$ terragrunt run-all apply
```
