FROM dokken/ubuntu-18.04

# Install the dependencies.
CMD sudo apt-get update \
    && sudo apt-get upgrade -y \
    && sudo apt-get install openjdk-8-jdk \
    && sudo apt install -y default-jre \
    && sudo apt install openjdk-8-jdk postfix \
    && sudo apt install python \


COPY . /SweetSecurity

WORKDIR /SweetSecurity

# Expose the port for monitoring. Run with "-p 80:80".
#EXPOSE 587

# Run the app.
#ENTRYPOINT ["python3", "main.py"]