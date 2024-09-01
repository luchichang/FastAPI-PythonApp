#Choosing the base image 
FROM python:3.12

#setting the current working directory 
# we are using this path because it will not be user specific
WORKDIR /usr/local/app

#Copying the source code from the host to the container
COPY . .

# creating the user 
RUN useradd -m -d /usr/local/app app && chown -R app:app /usr/local/app

#running the succeding commands as the mentioned user
USER app

#setting up the virtual environment 
#RUN python3 -m venv myenv && source myenv/bin/activate

#installing the dependencies in the container 

RUN   python3 -m venv myenv  && myenv/bin/pip install -r requirements.txt 

#Exposing the container in posrt 8000
EXPOSE 8000

CMD ["myenv/bin/python", "-m", "uvicorn", "main:app", "--host", "0.0.0.0",  "--reload", "--port", "8000"]


 
