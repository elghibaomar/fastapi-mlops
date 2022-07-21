# 
FROM python:3.9

# 
WORKDIR /code

# 
COPY ./requirements.txt /code/requirements.txt

COPY ./config.json /code/config.json



# 
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

# 
COPY ./app /code/app

# 
CMD [ "python3" "./bin/download_model"  && "uvicorn", "app.sentiment_analyzer.api:app", "--host", "0.0.0.0", "--port", "80"]
