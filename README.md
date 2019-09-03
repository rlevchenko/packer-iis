# Build Windows images with Packer 
 
- Packer uses Azure RM and it’s Windows Server 2019-Datacenter marketplace image
- Creates a VM, connects to the VM via communicator (see communicator subsection)
- Prepares image by running scripts and actions defined in the provisioners section.  I’m using two PowerShell scripts for installing IIS role and OS sysprepping at the end of customization. 
- Also, Packer automatically updates OS and restarts it if necessary (custom windows-update and built-in windows-restart provisioners)
- (tip) findsku.ps1 is just a reminder of how to get sku and other details of the marketplace images

## Blog post
https://rlevchenko.com/2019/03/15/building-windows-images-with-packer/