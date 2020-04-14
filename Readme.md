# Shell Script to ensure Ubuntu is always connected to wifi and OpenVPN

I created this script to keep my server machine connected to my wifi and openvpn all the time.

## Dependencies
- This bash script utilizes the Network Manager CLI (NMCLI)
- make sure you previously connected to the openvpn server through the network manager

## Usage

1. Clone the Repo to your system
2. Navigate to the directory you placed the .sh file in
3. Make sure to change file permissions to executable
```bash
chmod +x ./connectioncheck.sh
```
4. Create a task in crontab to run the script with the interval you need (15 minutes for me)
```bash
sudo crontab -e
```
5. add this line to the end of the file, put the full file path:
```bash
*/15 * * * * /path/to/file.sh
```

## Dependencies
This bash script utilizes the tool