#  ___________              _____  _____.__         .____    .__       .__     __   
#  \__    ___/___________ _/ ____\/ ____\__| ____   |    |   |__| ____ |  |___/  |_ 
#    |    |  \_  __ \__  \\   __\\   __\|  |/ ___\  |    |   |  |/ ___\|  |  \   __\
#    |    |   |  | \// __ \|  |   |  |  |  \  \___  |    |___|  / /_/  >   Y  \  |  
#    |____|   |__|  (____  /__|   |__|  |__|\___  > |_______ \__\___  /|___|  /__|  
#                        \/                     \/          \/ /_____/      \/      
#      .___      __                 __  .__                        .__  __  .__     
#    __| _/_____/  |_  ____   _____/  |_|__| ____   ____   __  _  _|__|/  |_|  |__  
#   / __ |/ __ \   __\/ __ \_/ ___\   __\  |/  _ \ /    \  \ \/ \/ /  \   __\  |  \ 
#  / /_/ \  ___/|  | \  ___/\  \___|  | |  (  <_> )   |  \  \     /|  ||  | |   Y  \
#  \____ |\___  >__|  \___  >\___  >__| |__|\____/|___|  /   \/\_/ |__||__| |___|  /
#       \/    \/          \/     \/                    \/                        \/ 
#  ___________                             ___________.__                           
#  \__    ___/___   ____   ________________\_   _____/|  |   ______  _  __          
#    |    |_/ __ \ /    \ /  ___/  _ \_  __ \    __)  |  |  /  _ \ \/ \/ /          
#    |    |\  ___/|   |  \\___ (  <_> )  | \/     \   |  |_(  <_> )     /           
#    |____| \___  >___|  /____  >____/|__|  \___  /   |____/\____/ \/\_/            
#               \/     \/     \/                \/                                  

# This Dockerfile creates an image which will contain the standard TensorFlow package
# and additionaly the following python packages:
# -- numpy
# -- matplotlib
# -- pillow
# -- opencv-python

FROM tensorflow
LABEL maintainer "Ina Schmidt"
RUN sudo apt update && \
    sudo apt upgrade && \
    sudo apt install -y python3-pip && \
    apt autoremove && \
    apt clean && \
    pip3 install numpy matplotlib pillow opencv-python && \
    rm -rf /var/lib/apt/lists/*
CMD [ "/bin/bash" ]
