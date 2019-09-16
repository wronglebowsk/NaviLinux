# NaviLinux Setup
A project to simplify and streamline the process of setting up the new Navi based AMD cards on Linux, specifically in Manjaro and Arch distributions.
With Linux Gaming gaining some momentum I decided to take Manjaro for a spin, a highly rated Distro for Gaming that comes preloaded with Steam. Much to my disappointment there's still no support for AMD Navi GPUs, the 5700 and XT. There are several components required and for a Linux beginner getting your desktop up and running may be a challenge. To that ends I've written these scrips to streamline the process. 
# Note, if visiting this page in the far future this is likely completely unnecessary. I'm conservatively suspecting by December 2019 these scrips will be irrelevant
Please be aware that I would not recommend running your PC on these packages long term, this is just a stopgap to get Navi working at all. These packages are developer builds still in the process of getting finalized, you may experience issues/crashes/bugs. I will be making a "restoring" script to take you back to the normal mainline packages in the future. 
# What you'll need
1. Another non-Navi based GPU
2. The two scrips provided
3. Fresh install of Manjaro 18.10(This may work with Arch or other Manjaro versions but YMMV)
# Steps
1. Install your non-Navi GPU, then install Manjaro
3. Run the Manjaro Package Manager, depending on your desktop environment this will be found in different places. It's important to check all packages for updates before running. This can be done by selecting the "Updates" tab on the Package manager and clicking "Apply".
2. Download the two scrips in this repository
3. Enable these scrips to be executed as programs, you can do this by right clicking and going into Properties --> Permissions or running chmod +x script.sh
4. Run the first script as sudo Example "sudo ./RunSudo.sh"
  Note this will present several prompts, you'll want to say 'y' to continue through all of them. Here's a breif explination of the prompts.
  "The following packages are out of date, please update your system first:" - This occurs if you didn't run the package manager first and update any packages, it's likely okay to proceed but I would recommend running the package manager.
  "Packages (1) linux53-xxxxxxxxxx" This is followed by download size and installed size, this will vary depending on the latest version of 5.3 available. Kernel 5.3 is the minimum required version, enter "Y" to proceed.
   "XXXX and YYYY are in conflict. Remove XXXX?" Prompts like this will appear several times, since we need to be on the devloper versions of some Linux subsystems we're replacing the mainstream packages with developer ones. Enter 'y' to continue through all of them.
   "Packages (X) XXXXXXXXX" Followed by Total download size and other figures. This is the installation of developer packages we just agreed to. Enter 'y' to continue.
   The script should end gracefully
 5. Run the second script, no sudo this time. Example "./NoSudo.sh"
  There are also several prompts for this script, described as follows.
  "To install (X): XXXXXX" This will be a long ist of packages to install, ending with Trizen. Trizen is a package manager for Arch User Repository(AUR) packages. There's additional software needed for Navi that resides here, so we'll need to install Trizen so we can install that Navi specific package. Enter 'y" to continue. 
  Authentication is required to install Trizen, so enter your password.
  "Edit PKGBUILD" This is asking if you want to modify the "recipe" to assemble Trizen on your system, enter 'N'.
  "Packages (X) XXXXX" This is asking to confirm the install of the special Navi package, enter 'Y'.
  Then the script will end gracefully
6. Shut down and install your Navi GPU
7. Boot, you should land on your desktop without issue!
  
  
