# base image which is provided by docker hub
FROM ubuntu:latest

# copy README.md form the build context to the containers path /tmp/
COPY README.md /tmp/
RUN echo 'Done copying'


# provide the executable which shall be started when a container is started from the image that is created from this dockerfile 
# only the last ENTRYPOINT is used

ENTRYPOINT [ "cat" ]



# exec form, overrides the entrypoint

# CMD ["executable","param1","param2"] 
# CMD ["cat","-n","/tmp/README.md"] 



# sends parameter1 and parameter2 to ENTRYPOINT

# CMD ["-n","/tmp/README.md"]



# executes command with given parameters from a shell, so the process invoced by the command won't have PID 1

# CMD cat -n /tmp/README.md


CMD ["-n", "/tmp/README.md"]
