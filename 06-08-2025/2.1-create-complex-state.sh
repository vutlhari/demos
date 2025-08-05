aws dynamodb create-table \
    --table-name my-music \
    --attribute-definitions AttributeName=Artist,AttributeType=S AttributeName=SongTitle,AttributeType=S \
    --key-schema AttributeName=Artist,KeyType=HASH AttributeName=SongTitle,KeyType=RANGE \
    --provisioned-throughput ReadCapacityUnits=5,WriteCapacityUnits=5 \
    --endpoint-url=http://localhost:4566 \
    --region us-east-1

aws dynamodb put-item \
    --table-name my-music \
    --item '{"Artist": {"S": "Drake"}, "SongTitle": {"S": "What Did I Miss?"}, "Album": {"S": "ICEMAN"}}' \
    --endpoint-url=http://localhost:4566 \
    --region us-east-1
