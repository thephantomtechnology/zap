rm -rf /opt/PHANTX/zap

wget https://github.com/zaproxy/zaproxy/releases/download/v2.15.0/ZAP_2.15.0_Linux.tar.gz

if [ $? -eq 0 ]
then
  # Result is OK! Just continue...
  echo "Download ZAP... PASS!"
else
  # houston we have a problem
  exit 1
fi

tar -xvzf ZAP_2.15.0_Linux.tar.gz

if [ $? -eq 0 ]
then
  # Result is OK! Just continue...
  echo "Extract ZAP... PASS!"
else
  # houston we have a problem
  exit 1
fi

cp -Rf ZAP_2.15.0 /opt/PHANTX/zap

if [ $? -eq 0 ]
then
  # Result is OK! Just continue...
  echo "Copy PACKAGE... PASS!"
else
  # houston we have a problem
  exit 1
fi

cp -Rf phantxbin/* /opt/PHANTX/bin

chown -R phantx:phantx /opt/PHANTX
chmod -R 755 /opt/PHANTX/bin
