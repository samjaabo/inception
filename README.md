# inception

sandbox: https://labs.play-with-docker.com/p/cqb9lh291nsg00afilsg#cqb9lh29_cqb9loa91nsg00afiltg


docker build . -t said_nginx        #create docker image
docker run -d -p 80:80 said_nginx   #create a container from an image'

test saving



uilding 33.9s (24/30)                                                                              
 => [srcs-wordpress 3/8] RUN apt install -y php-fpm php-mysql  && apt install -y  wget && mkdir   21.5s
 => => # Building dependency tree...                                                                   
 => => # Reading state information...                                                                  
 => => # The following additional packages will be installed:                                          
 => => #   ca-certificates libpsl5 openssl publicsuffix                                                
 => => # The following NEW packages will be installed:                                                 
 => => #   ca-certificates libpsl5 openssl publicsuffix wget                                           
 => => exporting layers                                                                            1.7s
 => => writing image sha256:43b5d580212db024b338d74312158e10d06444574a47c1414f0c88ff922b148d       0.0s
 => => naming to docker.io/library/srcs-nginx                                                      0.0s
 => => writing image sha256:b32357b152158f2ca59c8dff29b50e5b862fd2549ef6a8193de5fa001b17ac53       0.0s
 => => naming to docker.io/library/srcs-mariadb                