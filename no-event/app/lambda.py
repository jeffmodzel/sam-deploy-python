import os

def ani_lookup(event, context):
    #
    # Example ANI lookup
    #     

    print('ani lookup')
    print(event)
    print(context)
    dumpEnvironmentVariables()

    response = { 'success' : 'false' }

    if event['ani'] == '1234567890':
        response['success'] = 'true'
    
    return response

def dumpEnvironmentVariables():
    print(os.environ)