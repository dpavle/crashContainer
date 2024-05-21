FROM python:alpine

WORKDIR /app

EXPOSE 5000

COPY ./crashContainer.py .

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

CMD [ "python", "./crashContainer.py" ]