FROM python:3
# Copies all files in the current directory to a directory where our app will
# be stored.
COPY . /usr/src/app
# Change my working directory to where our app files are in.
WORKDIR /usr/src/app
# Install our requirements from a file.
RUN pip install -r requirements.txt
# Commands that wil run when we start our container.
CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]