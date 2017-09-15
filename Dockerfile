FROM python:latest

# install awscli
RUN pip install --upgrade --user awscli

# path to profile script
ENV PATH=~/.local/bin:$PATH

# allow run aws scripts
RUN chmod +x ~/.local/bin

# copy credentials
ADD ${PWD}/awscli/.aws /root/.aws