FROM amazon/aws-lambda-python:3.8

RUN /var/lang/bin/python3.8 -m pip install --upgrade pip

RUN yum install git -y

RUN git clone https://github.com/Team-Zzangdol/Text-Emotion-Analysis-model

RUN pip install -r Text-Emotion-Analysis-model/requirements.txt

RUN cp Text-Emotion-Analysis-model/main.py /var/task/

CMD ["main.lambda_handler"]