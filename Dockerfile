FROM python as base
WORKDIR /usr/src/app
COPY src/ ./
RUN pip install --no-cache-dir -r requirements.txt 

FROM python
COPY --from=base /usr /usr
WORKDIR /usr/src/app
ENV FLASK_APP=app.py
CMD [ "gunicorn", "--workers=4", "--bind=0.0.0.0:80", "-m", "007", "wsgi" ]