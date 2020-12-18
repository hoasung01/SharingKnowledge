###in the file:
1. `~/.aws/credentials`

```html
[default]
aws_access_key_id={{aws_access_key_id}}
aws_secret_access_key={{aws_secret_access_key}}

[{{profile_name}}]
aws_access_key_id={{aws_access_key_id}}
aws_secret_access_key={{aws_secret_access_key}}

[myaccount02]
aws_access_key_id=my_access_key_id03
aws_secret_access_key=my_secret_key03
```

###in the file:
2. `~/.aws/config`

```html
[default]
region={{region}}
output={{output:"json||text"}}

[profile {{profile_name}}]
region={{region}}
output={{output:"json||text"}}

[myaccount02]
aws_access_key_id=my_access_key_id03
aws_secret_access_key=my_secret_key03
```

###usage:
`aws ec2 describe-instances --profile {{profile_name}}`
`aws ec2 describe-instances --profile myaccount02`