import os
import BaseHTTPServer

PORT             = os.getenv('PORT', 8080)
BG_COLOR         = os.getenv('BG_COLOR', 'black')
TEXT_COLOR       = os.getenv('TEXT_COLOR', 'white')

class CustomHandler(BaseHTTPServer.BaseHTTPRequestHandler):
    def do_GET(self):
        self.send_response(200)
        self.send_header('Content-type', 'text/html')
        self.end_headers()
        self.wfile.write('''
            <html>
                <body style="background: %s">
                    <center>
                        <h1 style="color: %s">Hello World!</h1>
                        <h2 style="color: %s">This is a test</h2>
                    </center>
                </body>
            </html>
        ''' % (BG_COLOR, TEXT_COLOR, TEXT_COLOR))

def main():
    server = BaseHTTPServer.HTTPServer(('', PORT), CustomHandler)
    print('Starting server on port %d...' % PORT)
    server.serve_forever()

if __name__ == '__main__':
    main()
