FROM python:3.9-slim as build
COPY . .
RUN pip install -r requirements.txt

FROM ubuntu
COPY --from=build . .
CMD ["python", "hello_world.py"]