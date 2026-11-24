# Linux Practical Assessment

This repository contains the practical implementation of the Ubuntu Linux Server assessment.

## 1. Environment

- OS: Ubuntu Server 24.04 LTS
- Web Server: Nginx
- SSH Authentication: Ed25519 Public Key
- Firewall: UFW
- Scripting: Bash

## 2. SSH Security

- Created a dedicated user named `netops`.
- Added the user to the sudo group.
- Configured SSH public key authentication.
- Disabled root SSH login.
- Disabled password-based SSH authentication.
- Enabled key-based SSH authentication.


## 3. Nginx Configuration

Installed Nginx and configured two independent websites.

| Website | Port | Document Root |
|---|---|---|
| Network Operations | 8081 | /var/www/site1 |
| IT Infrastructure | 8082 | /var/www/site2 |

Both websites were configured as separate Nginx server blocks.

## 4. Firewall

Configured UFW to allow:
- SSH (22/tcp)
- HTTP application port (8081/tcp)
- HTTP application port (8082/tcp)

## 5. System Information Script

Created `server-info.sh`, which reports:

- Hostname
- Current date and time
- Disk usage
- Memory usage
- System uptime

The script also saves its output to `server-info.log`.

## 6. Nginx Service Management

Enabled Nginx to start automatically during system boot.

Validation commands:

```bash
sudo nginx -t
sudo systemctl enable nginx
sudo systemctl status nginx
```

## 7. Testing

- Verified SSH public key authentication.
- Verified Nginx configuration syntax.
- Tested both websites using curl and a web browser.
- Verified Nginx service status.
- Executed the Bash script and checked its log output.

## 8. Repository Structure

```text
linux/
	html/
		site1-index.html
		site2-index.html

	nginx/
  		site1.conf
  		site2.conf
	scripts/
  		server-info.sh
  	ssh/
  		sshd-hardening.txt
screenshots/
	nginx status.png
	site1.png
	site2.png
README.md
```

All configurations and scripts were tested in an Ubuntu Server virtual machine.
