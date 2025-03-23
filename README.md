### How to start the app locally

#### Issues with password on ssh
```commandline
sudo nano /etc/ssh/sshd_config
PasswordAuthentication from 'no' to 'yes'
sudo systemctl restart sshd
```
```commandline
python3 -m venv venv
# Windows: 
venv\Scripts\activate.bat
# macOS/Linux: 
source venv/bin/activate
pip install -r requirements.txt
```

#### Linux
```commandline
export FLASK_APP=app.py
```
#### Windows
```commandline
set FLASK_APP=app.py
set FLASK_ENV=development
# development does auto hot swap
```
Then run
```commandline
flask run
# to exit venv un 
deactivate 
```
Follow: 
http://127.0.0.1:5000/b799dd88-e819-44df-8bcb-e577a2735096
