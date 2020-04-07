FROM ubuntu:18.04

# Add ruby and cocoapods
RUN apt-get update
RUN apt-get install -y git ruby-full curl build-essential
RUN gem install cocoapods -v 1.9.1

# You cannot run CocoaPods as root
# (user `nobody` does not have enough permissions)
RUN adduser cocoapods
USER cocoapods
RUN pod setup
