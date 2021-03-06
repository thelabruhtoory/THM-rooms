

The mayhem at Best Festival Company continues. McEager receives numerous emails and phone calls about a possible ransomware attack affecting all the endpoints in the network. McEager knows that the endpoints which are infected with the malware don't have any backup copies but luckily on his workstation he has backups enabled.

Task: Investigate the malware and restore the files to their original state.

Watch DarkStars video on solving this task!

You can use the AttackBox and Remmina to connect to the remote machine via RDP (Remote Desktop Protocol).

To get the full experience of the simulated ransomware attack there are some settings you need to configure on Remmina to view the wallpaper on the remote machine.

Launch Remmina. When the application loads, click the ellipsis to access the Preferences options.

At the dropdown, click Preferences.

Click on the RDP in the Preferences window.

Make the following changes and click OK.

Now with that set, you are ready to connect to the remote machine. Make sure it's deployed before proceeding. Click on the plus icon as shown below.

For Server provide (10.10.15.54) as the IP address provided to you for the remote machine. The credentials for the user account is:

    User name: administrator
    User password: sn0wF!akes!!!

Accept the Certificate when prompted and you should be logged into the remote system now.

Note: The virtual machine may take up to 3 minutes to load.

Ransomware is a real threat that enterprise defenders and casual computer users need to defend & prepare against. According to Wikipedia, ransomware is a type of malware that threatens to publish the victim's data or perpetually block access to it unless a ransom is paid. It can be a frightening experience to log into a machine only to realize that malware has encrypted all of your important documents.

There are numerous security products that can be implemented in the security stack to catch this type of malware. If ransomware infects an endpoint, depending on the actual malware, there might be a decryptor made available by a security vendor. If not then you must rely on backups in order to restore your machines to the last working state, along with its files. Windows has a built-in feature that can assist with that.

The Volume Shadow Copy Service (VSS) coordinates the actions that are required to create a consistent shadow copy (also known as a snapshot or a point-in-time copy) of the data that is to be backed up.  (official definition)

Malware writers know of this Windows feature and write code in their malware to look for these files and delete them. Doing so makes it impossible to recover from a ransomware attack unless you have an offline/off-site backup. Not all malware deletes the volume shadow copies though.

Before diving into VSS on the endpoint let's talk briefly regarding the Task Scheduler.

The Task Scheduler enables you to automatically perform routine tasks on a chosen computer. Task Scheduler does this by monitoring whatever criteria you choose (referred to as triggers) and then executing the tasks when those criteria are met. (official definition)

Malware writers might have the malware create a scheduled task in order for the malware to run at a specific desired day/time or trigger. The Task Scheduler utility has been conveniently been placed in the taskbar for you. To view, the scheduled tasks click on Task Scheduler Library.  You should see 2 scheduled tasks of interest: 1 with a weird name and the other related to VSS. Click on any of the scheduled tasks to populate more information about it, such as Triggers and Actions.

At this point you should realize that VSS is enabled and thanks to the scheduled task you know the ID of the volume.

The command to interact with VSS is vssadmin. Running the command alone will display brief information on how to run the utility with additional commands. Two commands of particular interest are List Volumes and List Shadows.

If you run vssadmin list volumes you will see that the C:\ drive has a different volume name/id. There must be another volume on the endpoint.

You can use Disk Management to check into that. Disk Management is a system utility in Windows that enables you to perform advanced storage tasks. (official definition) As with the other utilities, Disk Management has been placed in the taskbar for your convenience.

As you can see there is another volume but you're unable to view it within Windows Explorer. Right-click the partition to view its properties. Now, look at the Security tab. Confirm that the volume name/id from the Task Scheduler and vssadmin output is similar to the object name of this partition.  Also, notice there is a tab titled Shadow Copies. Review the information and close the Properties window.

In order to see this partition within Windows Explorer, you must assign it a drive letter. Right-click the partition and select Change Drive Letter and Paths.  Click Add.  In the dropdown choose a letter, such as Z, and click OK.  At the top, in the Volume column, you should now see that the partition has a letter assigned to it. Open Windows Explorer to navigate to the partition.

In a previous challenge, you managed to view hidden content in folders via the command-line. You can do the same within Windows Explorer. In the menu, select View, and checkmark  Hidden Items. You should now see any hidden content right within Windows Explorer.

Back to VSS, to restore files to a previous version, simply right-click the folder and select Properties then select the Previous Versions tab.  Select which shadow copy you would like to restore and click the Restorebutton. Accept the confirmation to restore the shadow copy. Close the Properties window and drill into the folder to find the restore file(s).


------------------------------------------------------------------------------

Decrypt the fake 'bitcoin address' within the ransom note. What is the plain text value?
'''
nomorebestfestivalcompany
'''


At times ransomware changes the file extensions of the encrypted files. What is the file extension for each of the encrypted files?
'''
.grinch
'''


What is the name of the suspicious scheduled task?
'''
opidsfsdf
'''


Inspect the properties of the scheduled task. What is the location of the executable that is run at login?
'''
C:\Users\Administrator\Desktop\opidsdsdf.exe
'''


There is another scheduled task that is related to VSS. What is the ShadowCopyVolume ID?
'''
7a9eea15-0000-0000-0000-010000000000
'''


Assign the hidden partition a letter. What is the name of the hidden folder?
'''
confidential
'''


Right-click and inspect the properties for the hidden folder. Use the 'Previous Versions' tab to restore the encrypted file that is within this hidden folder to the previous version. What is the password within the file?
'''
m33pa55w0rdIZseecure!
'''