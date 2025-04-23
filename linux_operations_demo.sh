#!/bin/bash
# Demonstrating 50 Useful Linux Commands in action

echo "1. Current directory:"
pwd

echo "2. Listing files:"
ls

echo "3. Long listing:"
ls -l

echo "4. Listing all files including hidden:"
ls -a

echo "5. Changing to home directory:"
cd ~

echo "6. Creating a directory named demo_dir:"
mkdir demo_dir

echo "7. Removing the directory named demo_dir:"
rmdir demo_dir

echo "8. Creating a file named demo_file.txt:"
touch demo_file.txt

echo "9. Deleting the file demo_file.txt:"
rm demo_file.txt

echo "10. Copying a file:"
touch file1.txt
cp file1.txt file2.txt

echo "11. Moving a file to /tmp/:"
mv file2.txt /tmp/

echo "12. Renaming a file:"
touch rename_me.txt
mv rename_me.txt renamed.txt

echo "13. Viewing contents of a file:"
echo "Sample content" > myfile.txt
cat myfile.txt

echo "14. Viewing with less:"
less myfile.txt

echo "15. Searching for 'Sample' in a file:"
grep "Sample" myfile.txt

echo "16. Recursive search for 'Sample':"
grep -r "Sample" .

echo "17. Showing top processes (first 5 lines):"
top -b -n 1 | head -n 5

echo "18. Creating a process and killing it:"
sleep 60 &
kill -9 $!

echo "19. Disk usage:"
df -h

echo "20. Memory usage:"
free -h

echo "21. Current user:"
whoami

echo "22. Listing all users:"
cut -d: -f1 /etc/passwd

echo "23. Simulating user creation (commented out for safety):"
# sudo useradd newuser

echo "24. Simulating password change (not executable):"
# passwd newuser

echo "25. Downloading a file:"
wget -q https://www.example.com -O downloaded.html

echo "26. Creating and unzipping a zip file:"
zip file.zip myfile.txt
unzip file.zip

echo "27. Creating and extracting a tar.gz file:"
tar -cvzf archive.tar.gz myfile.txt
tar -xvzf archive.tar.gz

echo "28. Counting lines in a file:"
wc -l myfile.txt

echo "29. Showing file type:"
file myfile.txt

echo "30. Showing current date and time:"
date

echo "31. Listing crontab (requires crontab):"
crontab -l

echo "32. Changing permissions of a file:"
chmod 755 myfile.txt

echo "33. Changing file ownership (simulated):"
# sudo chown $USER:$USER myfile.txt

echo "34. Pinging google.com (4 packets):"
ping -c 4 google.com

echo "35. Network interfaces (ifconfig may be deprecated):"
ip a

echo "36. Show IP address:"
hostname -I

echo "37. DNS lookup:"
nslookup google.com

echo "38. Checking open ports (requires net-tools):"
netstat -tulpn | head -n 5

echo "39. Tailing a log file (simulate):"
touch dummy.log && echo "Log line" >> dummy.log
tail -f dummy.log & sleep 2; kill $!

echo "40. Finding a file:"
find . -name "myfile.txt"

echo "41. Checking disk usage:"
du -sh *

echo "42. Echoing Hello World:"
echo "Hello World"

echo "43. Appending line to a file:"
echo "New Line" >> myfile.txt

echo "44. Comparing two files:"
cp myfile.txt file2.txt
diff myfile.txt file2.txt

echo "45. Replacing text in a file:"
sed -i 's/New/Old/g' myfile.txt

echo "46. Making script executable:"
chmod +x $0

echo "47. Running a simple script (this one):"
# Already running

echo "48. System uptime:"
uptime

echo "49. Cleanup:"
rm -f file1.txt file2.txt myfile.txt renamed.txt archive.tar.gz dummy.log downloaded.html file.zip

echo "50. Done."
