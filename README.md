# Nginx Access Log Analyzer

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

A lightweight shell script for analyzing Nginx access logs. Get instant insights about your web server traffic with minimal setup.

## Features

- **Top Statistics**: Quickly identify:
  - Top 5 IP addresses by requests
  - Top 5 requested URLs/paths
  - Top 5 HTTP status codes
  - Top 5 user agents
- **Lightweight**: Requires only standard Unix utilities (AWK, sort, uniq)
- **Easy Integration**: Works with standard Nginx log formats

## Requirements

- Unix-like system (Linux/macOS)
- Bash shell
- Core utilities: `awk`, `sort`, `uniq`, `head`
- Nginx access log file (default format)

## Installation

1. **Clone the repository**:
```bash
git clone https://github.com/yourusername/nginx-log-analyzer.git
cd nginx-log-analyzer
https://roadmap.sh/projects/nginx-log-analyser
Make script executable:

bash
Copy
chmod +x log-analyze.sh
Usage
bash
Copy
./log-analyze.sh /path/to/your/nginx-access.log
Example:

bash
Copy
# Analyze default Nginx logs (may require sudo)
./log-analyze.sh /var/log/nginx/access.log

# Or analyze a local copy
./log-analyze.sh ./sample-access.log
Sample Output
text
Copy
Top 5 IP addresses with the most requests:
192.168.1.100 - 45 requests
10.0.0.23 - 32 requests
172.16.0.42 - 28 requests
...

Top 5 most requested paths:
/ - 120 requests
/styles.css - 85 requests
/api/data - 67 requests
...

Top 5 response status codes:
200 - 450 requests
404 - 23 requests
304 - 18 requests
...

Top 5 user agents:
Mozilla/5.0 (Windows NT 10.0; Win64; x64)
Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7)
curl/7.68.0
