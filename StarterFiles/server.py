# server.py
import http.server
import socketserver
import os

PORT = 7272

# path ที่เก็บ Registration.html
WEB_DIR = r"D:\663380228-3\Lab04\TestAutomationLab\StarterFiles"

# เปลี่ยน working directory ไปที่โฟลเดอร์นั้น
os.chdir(WEB_DIR)

Handler = http.server.SimpleHTTPRequestHandler

with socketserver.TCPServer(("", PORT), Handler) as httpd:
    print(f"Server running at http://localhost:{PORT}/Registration.html")
    httpd.serve_forever()
