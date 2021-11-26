FROM public.ecr.aws/j1r0q0g6/notebooks/notebook-servers/jupyter-scipy:v1.4
#WORKDIR /app

RUN  pip install --upgrade pip

## (2) access to Greenplum, PostgreSQL from JupyterNotebook
RUN pip install sqlalchemy==1.3.24
RUN pip install psycopg2-binary
RUN pip install sql_magic
RUN pip install ipython-sql==0.3.9
RUN pip install pgspecial



## (3) data manipulations and operations
RUN pip install numpy
RUN pip install pandas

## (4) modeling (* maybe not for the phase 1, but for later)
RUN pip install scikit-learn
RUN pip install scikit-optimize
RUN pip install scipy
RUN pip install statsmodels
RUN pip install xgboost
RUN pip install networkx


## (5) time series analysis (* maybe not for the phase 1, but for later)
RUN pip install gluonts
#RUN pip install prophet => error
RUN pip install pmdarima
#RUN pip install spectrum => error


## (6) explanations of machine learning models (* maybe not for the phase 1, but for later)
RUN pip install lime
#RUN pip install shap =>  error: command 'gcc' failed


## (7) scheduling optimization (* maybe not for the phase 1, but for later)
RUN pip install docplex
RUN pip install mip
RUN pip install pulp
RUN pip install pyomo
RUN pip install pygad
RUN pip install pymc3

## (8) deep learning (* maybe not for the phase 1, but for later)
#tensorflow # (for GPU) tensorflow-gpu, horovod

RUN pip install tensorflow
RUN pip install Keras-Applications
RUN pip install Keras-Preprocessing
RUN pip install tensorboard
RUN pip install torch  # => executor failed running [/bin/bash -c pip install torch]: exit code: 137
RUN pip install torchvision
RUN pip install mxnet


## (9) visualization
RUN pip install matplotlib
RUN pip install seaborn
## RUN pip install jupyter-dash
RUN pip install dash
RUN pip install plotly
RUN pip install ipykernel
RUN pip install ipython
RUN pip install ipywidgets
RUN pip install holoviews
RUN pip install graphviz

## (10) miscellaneous
RUN pip install pytools
RUN pip install shutils
RUN pip install pathlib
RUN pip install six
RUN pip install zipp
RUN pip install PyYAML
RUN pip install py
RUN pip install datetime
RUN pip install python-dateutil
RUN pip install pytz
RUN pip install future

## (11) KubeFlow pipelines
RUN pip install kubeflow-kale
