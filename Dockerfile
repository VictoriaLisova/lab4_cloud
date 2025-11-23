# беремо образ python
FROM python:3.10-slim

# встановлюємо робочу директорію
WORKDIR /app

# копіюємо файли з робочої директорії (файли проєкту)
COPY . /app

# встановлюємо flack
RUN pip install flask

# змінна середовища для порту
ENV PORT=3000

# відкриваємо порт 3000
EXPOSE 3000

# запускаємо код
CMD ["python", "main.py"]