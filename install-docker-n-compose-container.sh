 
 
 # update and install apt package curl gnupg  
 sudo apt-get update -y
 sudo apt-get install -y \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

 # Add Docker’s official GPG key:
sudo mkdir -p /etc/apt/keyrings
 curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg   

# Use the following command to set up the repository
  echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null 

# install docker engine
 sudo apt-get update -y
 sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y

# verify docker was install
 docker -v

# only build containers with changed/ altered file 
 docker-compose up --build -d


 echo "done!"