#       SharePoint APP Deployment Script

 
## Purpose:  
        
        Purpose of this script is to Install, and Delete SharePoint 2013 provider hosted apps.
 
## Requirements:

       1. SharePoint 2013 Management Shell.
       2. App deployment Scripts.
       3. SharePoint Admin account other than Farm account.
         
## How To Run:

###### 1.	To Install the Apps: 
            a. Open SharePoint management shell as admin 
            b. Go to the script file location and run the following command
            c. Script name -WebUrl Website - FolderPath folder path e.g., .\Installl-HRMSApps.ps1 -WebUrl https://www.sharepointapp.com -FolderPath C:\Appsssss\Apps\

Note: (Folder path:  Need to copy all the required apps in one folder and provide path of that folder as folder path.)

###### 2.	To Delete the Apps:
            a. Open SharePoint management shell as admin 
            b. Go to the script file location and run the following command
            c. Script name -WebUrl Website e.g., .\DeleteAll-SPAppstances.ps1 -WebUrl https://www.sharepointapp.com 
   
## Limitations:
               This script works only for SharePoint on premises, it will not work on SharePoint online
 
 
 
 
 
 
    
