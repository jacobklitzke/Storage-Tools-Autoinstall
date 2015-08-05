This powershell script automates the process of installing various tools and software necessary to begin using a complete
storage solution. 

This script will install: MPIO, HBA management software, and vendor specific Santricity. 

The script can install HBA software from Emulex and QLogic.
	Note: In order for the software to be successfully installed the file name must match the name that is hardcoded into the powershell script.

The script also installs vendor specific Santricity.
	Note: The Santricity file also must match the name that is hardcoded into the powershell script.

To run this script, copy the file to a folder containing the installation .exe's for each of the programs listed above.

Note: This script does not work without the proper installation .exe's. This script also does not provide those .exe's.