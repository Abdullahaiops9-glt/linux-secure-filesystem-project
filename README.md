# Secure File System using Permissions & Ownership

## Overview
Linux project to secure files using users, groups, ownership, permissions and access testing.

## 🎯 Objective
Create secure users and groups
Configure user home directories
Protect sensitive folder access
Allow trusted users only
Block unauthorized users
Practice real Linux administration skills

## Skills Used
- useradd
- groupadd
- chmod
- chown
- Linux security
- troubleshooting

## 📁 GITHUB / GITLAB PROJECT STRUCTURE

linux-secure-filesystem-project/

│── README.md

│── commands.sh

│── screenshots/

│   ├── users-created.png

│   ├── home-directories.png

│   ├── secure-folder.png

│   ├── permission-770.png

│   ├── devuser-success.png

│   ├── outsider-denied.png

│   └── file-660.png

## ⚙️ Step 1: Create Users & Group
- groupadd securegrp
- useradd -G securegrp devuser
- useradd outsider
- passwd devuser
- passwd outsider

### Created:
- securegrp = secure group
- devuser = trusted user
- outsider = unauthorized test user
  
## ⚙️ Step 2: Create Home Directories
- mkdir -p /home/devuser
- chown devuser:devuser /home/devuser
- chmod 700 /home/devuser
- mkdir -p /home/outsider
- chown outsider:outsider /home/outsider
- chmod 700 /home/outsider
This ensures both users can log in properly.

## ⚙️ Step 3: Create Secure Directory
- mkdir /secure_data
- This folder stores protected data.

## ⚙️ Step 4: Set Ownership
- chown devuser:securegrp /secure_data
- Owner = devuser
- Group = securegrp

## ⚙️ Step 5: Set Strict Permissions
- chmod 770 /secure_data
#### Meaning
- Owner → full access
- Group → full access
- Others → no access

## ⚙️ Step 6: Test Trusted User Access
-  su - devuser
-  pwd
-  cd /secure_data
-  touch work.txt
-  echo "authorized access" > work.txt
-  ls -l
-  cat work.txt
-  exit
-  ✅ Trusted user successfully entered folder and worked inside it.

## ⚙️ Step 7: Test Unauthorized User Access
- su - outsider
- pwd
- cd /secure_data
- touch fail.txt
- cat /secure_data/work.txt
- exit
-  ❌ Permission denied confirms security rules are active.

## ⚙️ Step 8: Secure Sensitive File
- touch /secure_data/secret.txt
- chmod 660 /secure_data/secret.txt
- ls -l /secure_data
### Meaning of 660
- Owner → read/write
- Group → read/write
- Others → no access

## Result
Trusted users allowed, outsiders denied.

## Screenshots
See screenshots folder.

## 📌 Article available on:

#### Medium : 
