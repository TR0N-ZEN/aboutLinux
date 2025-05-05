# package managers

Package managers manage software.  
Considering software can be dependent on other software,  
a manager for this comes in useful since dependencies can grow complicated.  
So software is organized in packages.  
Packages are stored in a repository.  
So if one wants to install a package with a package manager,  
one needs to add sources from where packages can be downloaded,  
these sources are called repositories.  

Packages are specific to package managers,  
packages who come in the form of a file ending on `.deb` are ment to be installed via `dpkg` or `apt`,
and package files ending on `.rpm` are intenden for being installed by e.g. `dnf`.
there is a program called `alien` to translate packages between `.deb` and `.rpm` for example.  

Package managers I know:
+ `apt`
+ `dnf`
+ `pacman`
+ `nix` - https://nixos.org/learn/
+ `homebrew` - https://brew.sh/
+ `snap`
+ `cargo`
  + documentation at https://doc.rust-lang.org/cargo/
  + explore available packages at https://crates.io/
