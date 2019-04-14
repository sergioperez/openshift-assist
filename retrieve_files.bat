@echo off

::
:: Variables specifying the host lists
::
set MASTER_LIST=hosts/master
set WORKER_LIST=hosts/worker
set INFRA_LIST=hosts/infra
set GLUSTER_LIST=hosts/gluster

set MASTER_FILE_LIST=file_lists/hosts/master
set WORKER_FILE_LIST=file_lists/hosts/worker
set INFRA_FILE_LIST=file_lists/hosts/infra
set GLUSTER_FILE_LIST=file_lists/hosts/gluster

::
:: Get SSH credentials
::
echo SSH credentials
set /p username=Username:
set /p password=Password:


::
:: Get master files
::

for /f "tokens=*" %%h in (%MASTER_LIST%) do (
  :: Create folder to download files
  echo mkdir retrieved_files/%%h
  echo mkdir retrieved_files/%%h/master
  echo mkdir retrieved_files/%%h/cloudprovider

  :: Download files
  echo pscp.exe -pw %password% %username%@%%h:/etc/origin/master/*.yaml retrieved_files/%%h/master
  echo pscp.exe -pw %password% %username%@%%h:/etc/origin/cloudprovider/*.yaml retrieved_files/%%h/cloudprovider
)
pause

for /f "tokens=*" %%h in (%WORKER_LIST%) do (
  :: Create folder to download files
  echo mkdir retrieved_files/%%h
  echo mkdir retrieved_files/%%h/master
  echo mkdir retrieved_files/%%h/cloudprovider

  :: Download files
  echo pscp.exe -pw %password% %username%@%%h:/etc/origin/master/*.yaml retrieved_files/%%h/master
  echo pscp.exe -pw %password% %username%@%%h:/etc/origin/cloudprovider/*.yaml retrieved_files/%%h/cloudprovider
)
pause

for /f "tokens=*" %%h in (%INFRA_LIST%) do (
  :: Create folder to download files
  echo mkdir retrieved_files/%%h
  echo mkdir retrieved_files/%%h/master
  echo mkdir retrieved_files/%%h/cloudprovider

  :: Download files
  echo pscp.exe -pw %password% %username%@%%h:/etc/origin/master/*.yaml retrieved_files/%%h/master
  echo pscp.exe -pw %password% %username%@%%h:/etc/origin/cloudprovider/*.yaml retrieved_files/%%h/cloudprovider

)
pause

for /f "tokens=*" %%h in (%GLUSTER_LIST%) do (
  :: Create folder to download files
  echo mkdir retrieved_files/%%h
  echo mkdir retrieved_files/%%h/master
  echo mkdir retrieved_files/%%h/cloudprovider

  :: Download files
  echo pscp.exe -pw %password% %username%@%%h:/etc/origin/master/*.yaml retrieved_files/%%h/master
  echo pscp.exe -pw %password% %username%@%%h:/etc/origin/cloudprovider/*.yaml retrieved_files/%%h/cloudprovider
)
pause
