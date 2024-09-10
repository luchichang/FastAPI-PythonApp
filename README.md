# FastApi-PythonApp

## Description
     This is a simple python app which renders the basic form and read the values provided in the form and display the output in the same page. html website is  rendered to the browser using  ** HTTP Get ** Method with the help of jinja2 library
     and once the user press the submit button the values send to the server via ** HTTP Post ** Method.

## Steps to Locally run the App
* set up the Environment,

 install the python 
    ```
       sudo apt update -y 
       sudo apt install python3 -y
    ```
  #### note:
   _Eliminate the Sudo if you run as a root User._

 move to the project directory and run the below command to create the virtual Environment

    ``` 
      python3 -m venv myenv
      source myenv/bin/activate
        
    ```
now run the command to installs the required packages and dependencies
   ```
      pip install -r requirements.txt
   ```     

once completed run the application locally using 
   ```
       uvicorn main:app --reload
   ```
🥳 congrats!! now app is runing in your locall machine. you can access it in your local browser by entering your <private IP>:8000 

 * for running in public ip, type
    ```
        uvicorn main:app --reload --host 0.0.0.0   --port <your desired Port No>
    ```
    
  now all the internet community can access the app

  <a> ![image](https://github.com/user-attachments/assets/8fdca46b-c403-48a7-ac33-4e2ab07bc491) </a>
  
  after clicking the submit button
   <a> ![image](https://github.com/user-attachments/assets/a19590ed-945f-4bbb-8aba-42b3a705ef4a)  </a>

   once Completed, type **deactivate** command to exit the virtual environment
   press  ctrl+c to kill the Process.

## Steps for Containerised way
 * install the docker client and docker daemon <br>
 
           sudo apt update -y  && sudo apt install docker.io -y
 
 * for adding more security or preventing root account from vulnerability. add the docker group to the user so, that user can send request to the docker daemon within the user space. <br>
 
           sudo usermod -aG docker <user_Name>
 
 * now either build the docker image with the docker file or pull the image from the repository <br>

           docker build -t python-app-img .
   
    or <br>

           docker pull dinesht0006/python-app
 
 * Image will be pulled from the container registry, you can verify it using
 
           docker images <br>
    (the newly pulled image will be listed)
 * Run  the image into a container

           docker run --name python-app-con -itd -p 8000:8000

now application is running without installing or changing the dependencies. That's the Docker way 😉 🆒!


