FROM public.ecr.aws/lambda/nodejs:14

COPY package*.json ${LAMBDA_TASK_ROOT}
WORKDIR ${LAMBDA_TASK_ROOT}
RUN npm install
COPY . ${LAMBDA_TASK_ROOT}

CMD ["index.handler"]
