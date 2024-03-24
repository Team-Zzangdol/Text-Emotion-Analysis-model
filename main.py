import json


def lambda_handler(event, context):
    request_body = json.loads(event.get('body', '{}'))

    content = request_body.get('content', 'Unknown')

    response_message = f"hello {content}!"

    return {
        'statusCode': 200,
        'headers': {
            'Content-Type': 'application/json'
        },
        'body': json.dumps({'message': response_message})
    }