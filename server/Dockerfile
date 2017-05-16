FROM ruby:latest

RUN git clone https://github.com/studio3104/nata2.git app
WORKDIR app
RUN bundle install
RUN pwd
ADD run.sh /app/run.sh
EXPOSE 9292
CMD /app/run.sh
