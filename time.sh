export AWS_DEFAULT_REGION=us-west-2
/usr/local/bin/aws cloudwatch put-metric-data --metric-name CurrentUnixTime --namespace "CloudGuru" --value `date +%s` --timestamp `date --utc "+%FT%T.%N" | sed -r 's/[[:digit:]]{6}$/Z/'`
