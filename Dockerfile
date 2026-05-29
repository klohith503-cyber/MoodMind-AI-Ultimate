FROM python:3.10

WORKDIR /app

COPY requirements.txt .

RUN pip install --upgrade pip

RUN pip install -r requirements.txt

COPY . .

EXPOSE 7860

CMD ["python", "moodmind_ai_project.py"]
