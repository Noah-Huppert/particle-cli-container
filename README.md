# Particle CLI Container
Container which runs the Particle CLI application.

# Table Of Contents
- [Overview](#overview)
- [Use](#use)
- [Install](#install)

# Overview
Container which runs the [Particle CLI](https://docs.particle.io/tutorials/developer-tools/cli).

# Use
Run the container by invoking the `bin/particle` script in this repository. Pass
arguments to this script like you would to the Particle CLI.  

The working directory the script was run from is mounted in the container under 
the `/mnt` directory. The Particle CLI is invoked within this directory in the 
container. 

It is recommended that you do not provide absolute paths to the Particle CLI 
container as they will be interpreted as paths inside the container's 
file system. 

# Install
If you would like to invoke the Particle CLI via this container from any 
location in your shell you have 2 options:

## Install Option 1 - Add to `PATH`
Add the `bin` directory in this repository to your path.

Place the following in your shell profile:

```
export PATH="$PATH:/path/to/this/repo/bin"
```

## Install Option 2 - Symlink
Create a symlink from the `bin/particle` file to a location already in 
your `PATH`:

Run the following once:

```
ln -s /path/to/this/repo/bin/particle /usr/local/bin/
```

Note that paths in the above command must be absolute.
