FROM centos:7

USER root

ENV RUBY_VERSION 2.3.3
# Install preparation:
RUN yum -y install make gcc-c++ which
RUN echo y | yum install patch readline readline-devel  \
    zlib zlib-devel openssl-devel
RUN echo y | yum install bzip2 autoconf automake libtool  \
    bison iconv-devel  \
    sqlite-devel libyaml-devel libffi-devel

# Install Ruby:
RUN curl -sSL https://rvm.io/mpapis.asc | gpg --import -
RUN curl -L get.rvm.io | bash -s stable
RUN source /etc/profile.d/rvm.sh
RUN /bin/bash -l -c "rvm reload"
RUN /bin/bash -l -c "rvm install ${RUBY_VERSION}"

# Install Cucumber:
RUN /bin/bash -l -c "gem install cucumber"
RUN /bin/bash -l -c "gem install rspec"
RUN /bin/bash -l -c "gem install appium_lib"

# Import project file:
ADD . /usr/project/
