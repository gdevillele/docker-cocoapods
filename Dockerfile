FROM ubuntu:16.04

# Add ruby and cocoapods
RUN apt-get update
RUN apt-get install -y git ruby-full curl

# Packaged `activesupport` incompatible 
# with packaged `ruby` version
# RUN gem install activesupport -v 4.2.6

RUN gem install cocoapods -v 1.7.2

# You cannot run CocoaPods as root
# (user `nobody` does not have enough permissions)
RUN adduser cocoapods
USER cocoapods
RUN pod setup

# Restore default user back to `root`
# USER root