# S3last

Just install the gem and add export the following env variables to your system.

```
AWS_ACCESS_KEY_ID=id
AWS_SECRET_ACCESS_KEY=key
AWS_REGION=region-name
AWS_DUMPS_BUCKET=bucket-name
```

Then just run `s3download`. The last file from the specified bucket on the `AWS_DUMPS_BUCKET ` will be downloaded to the `$HOME/Downloads` directory,
for now this path is hard coded.
