if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Localusersbot/Newbotserver-jd.git /JD-The-File-Donor
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /JD-The-File-Donor
fi
cd /DQ-The-File-Donor
pip3 install -U -r requirements.txt
echo "Starting JD-The-File-Donor...."
python3 bot.py
