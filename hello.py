def wsgi_application(environ, start_response):
    # бизнес-логика
    status = '200 OK'
    headers = [('Content-Type', 'text/plain')]
    query = environ['QUERY_STRING']
    start_response(status, headers )
    return [bytes(i + '\n', 'ascii') for i in environ['QUERY_STRING'].split('&')]
    #return environ['QUERY_STRING'].split('&') 