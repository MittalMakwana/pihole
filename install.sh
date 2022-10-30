#write out current crontab
crontab -l > ~/.crontab.bak
#echo new cron into cron file
echo "0 0 * * SAT sh ~/pihole/update.sh 2>/home/ubuntu/update.log" >> ~/.crontab.bak
#install new cron file
crontab ~/crontab.bak