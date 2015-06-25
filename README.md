# dpkg-buildpackage - docker container

If you're packaging up applications in debian packages,
you'll most likely be running `dpkg-buildpackage` to build them.

This container allows you to mount your project and build it.

## Usage

Inside the repo where the `package-version` folder is, run:

`docker run -v $(pwd):/package -it -e PACKAGE_NAME=package-version smaj/dpkg-buildpackage`

> Note the environment variable `PACKAGE_NAME` this must be set to the foldername
containing the `debian` folder.

By default it runs with the following arguments:

`-rfakeroot -us -uc`

You can override these defaults by adding them to the end of the command:

`docker run -v $(pwd):/package -it -e PACKAGE_NAME=package-version smaj/dpkg-buildpackage -rfakeroot`
