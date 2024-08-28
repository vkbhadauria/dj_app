FROM python
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR /app
COPY . /app
RUN pip install -r requirments.txt
EXPOSE 8000
RUN python manage.py migrate
RUN python manage.py collectstatic --noinput
CMD ["gunicorn", "dj_app.wsgi:application","--bind","0.0.0.0:8000"]
#CMD ["python","manage.py","runserver", "0.0.0.0:8000"]
