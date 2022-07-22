# 
FROM python:3.9

# 
WORKDIR /code

# 
COPY ./requirements.txt /code/requirements.txt

COPY ./config.json /code/config.json



# 

# Get Ubuntu packages
RUN curl

# NOTE: no need to run update again at this point
# RUN apt-get update

# Get Rust; NOTE: using sh for better compatibility with other base images
RUN curl https://sh.rustup.rs -sSf | sh -s -- -y


RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

# 
COPY ./app /code/app

# 

RUN python app/bin/download_model


CMD ["uvicorn", "app.sentiment_analyzer.api:app", "--host", "0.0.0.0", "--port", "80"]

