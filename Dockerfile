FROM python:3.7-alpine

WORKDIR /project

COPY ./project/requirements.txt .

RUN pip install -r requirements.txt

COPY ./project .

# ENV FLASK_APP=app.py
# ENV FLASK_ENV=development
#
# EXPOSE 5000
#
# # CMD ["python", "app.py"]

# ENTRYPOINT ["flask","run","--host=0.0.0.0"]
# CMD ["flask", "run", "--host=0.0.0.0"]