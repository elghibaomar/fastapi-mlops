# 
FROM python:3.9

# 
WORKDIR /code

# 
COPY ./requirements.txt /code/requirements.txt

COPY ./config.json /code/config.json





# NOTE: no need to run update again at this point
# RUN apt-get update

# Get Rust; NOTE: using sh for better compatibility with other base images
RUN pip install rustc



RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

# 
COPY ./app /code/app

# 

RUN python app/bin/download_model


CMD ["uvicorn", "app.sentiment_analyzer.api:app", "--host", "0.0.0.0", "--port", "80"]

