# postgres-tutorial-dockerized
Creates an initialized database with the postgres tutorial db dvdrental through a docker container.

## Dropping the public schema
Due to the .tar file creating a public schema I find it best to include the DROP SCHEMA logic in the shell script so that the .tar file could run without issues.

## Known issues
In windows, running the shell script might throw a `/docker-entrypoint-initdb.d/initdb.sh: /bin/bash^M: bad interpreter: No such file or directory` error. This is due to the file endings being different (CRLF and LF)  when the shell script is saved on windows. You will need to change the file endings in order for the script to work.
