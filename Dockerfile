FROM ubuntu:14.04

# Install pre-requisites from Carambola, excluding things not required for
# basic command-line based compile.
RUN apt-get update && apt-get install -y make libssl-dev xz-utils wget libxml-parser-perl python subversion g++ ncurses-term zlib1g-dev gawk flex patch gettext libncurses5 libncurses5-dev unzip quilt git git-doc

# Clean up
RUN apt-get -y clean
