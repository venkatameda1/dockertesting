FROM python:3.9
WORKDIR /app
copy . /app
RUN pip3 install streamlit
EXPOSE 8080
ENTRYPOINT ["streamlit", "run", "main.py", "--server.port=8080", "--server.address=0.0.0.0"]
