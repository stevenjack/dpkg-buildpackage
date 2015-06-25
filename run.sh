#!/bin/bash

cd /package/$PACKAGE_NAME
dpkg-buildpackage $@
