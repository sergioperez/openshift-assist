OpenShift Assist
----------------

I am creating this project to provide help to teams deploying OpenShift remotely.

# Steps to use it

## First step

Download the contents of this repo

## 2 - Get pscp

Follow the steps required for the platform of the client you are working with.

## Windows client

### Download pscp

#### Option A

[Direct download](https://the.earth.li/~sgtatham/putty/latest/w64/pscp.exe)

#### Option B

[PuTTy download list](https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html)

## 3 Get the project scripts

Clone this repo or download its content, and put pscp and the .bat files in the same folder.

## 4 Add your managed hosts to the lists

Edit the ./hosts folder adding your hostnames/ip addresses

## 5 Run the scripts!

retrieve\_files.bat Gets the files in ./retrieved\_files

clean.bat deletes everything in ./retrieved\_files

## 6 Send the files to someone working with you

Now you'll just have to compress the retrieved\_files folder to send it to someone who can work with you checking the correctness of your configuration files :)
