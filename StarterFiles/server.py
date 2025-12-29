import http.server
import socketserver
import os

PORT = 7272

WEB_DIR = r"C:\Users\User\Desktop\Software Engineering\TestAutomationLab\StarterFiles"

os.chdir(WEB_DIR)

Handler = http.server.SimpleHTTPRequestHandler

with socketserver.TCPServer(("", PORT), Handler) as httpd:
    print(f"Server running at http://localhost:{PORT}/Lab4/Registration.html")
    httpd.serve_forever()
