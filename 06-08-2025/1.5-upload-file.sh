echo "Hello AWS Jozi Meetup!" > meetup.txt

aws s3 cp meetup.txt s3://my-test-bucket/ \
  --endpoint-url=http://localhost:4566 \
  --region us-east-1
