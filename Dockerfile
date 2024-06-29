# FROM public.ecr.aws/lambda/nodejs:16

# COPY index.js ${LAMBDA_TASK_ROOT}
  
# CMD [ "index.handler" ]

FROM public.ecr.aws/lambda/nodejs:14

COPY package*.json ./ && index.js ${LAMBDA_TASK_ROOT}
RUN npm install
COPY . .

CMD ["index.handler"]
