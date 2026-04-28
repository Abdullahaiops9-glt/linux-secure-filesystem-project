groupadd securegrp
useradd -G securegrp devuser
useradd outsider
mkdir /home/devuser /home/outsider
mkdir /secure_data
chown devuser:securegrp /secure_data
chmod 770 /secure_data
chmod 660 /secure_data/secret.txt
