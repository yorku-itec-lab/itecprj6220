#!/bin/bash

echo "mongoDB testing started...\n ">>/itec6220prj/reports/mongoDB_report.txt
START=$(($(date +%s%N)/1000000))
  sudo arangoimport --server.password "passw0rd" --file /var/lib/neo4j/import/RateUsers.csv --collection=HasRating --type=csv --server.database "bitcoin" >>/itec6220prj/reports/mongoDB_report.txt
  sudo arangoimport --server.password "passw0rd" --file /itec6220prj/soc-sign-bitcoinotc.csv --collection=HasRating --type=csv --remove-attribute "TIME" --remove-attribute "RATING" --from-collection-prefix "Rater" --to-collection-prefix "Rater" --server.database "bitcoin" >>/itec6220prj/reports/mongoDB_report.txt
END=$(($(date +%s%N)/1000000))
echo "Import Execution took: $((END - START)) seconds" >>/itec6220prj/reports/mongoDB_performance.txt

# mongo queries as following

echo "mongo query 1 report...\n ">>/itec6220prj/result/mongoDB_report.txt
START1=$(($(date +%s%N)/1000000))
sudo ./itec6220prj/dbbenchmark/mongodb/bin/console.sh mongo_match1.txt >>/itec6220prj/reports/mongoDB_report.txt
END1=$(($(date +%s%N)/1000000))
echo "Execution took: $((END1 - START1)) seconds" >>/itec6220prj/reports/mongoDB_performance.txt

echo "mongo query 2 report...\n ">>/itec6220prj/reports/mongoDB_report.txt>
START2=$(($(date +%s%N)/1000000))
sudo ./itec6220prj/dbbenchmark/mongodb/bin/console.sh mongo_match2.txt >>/itec6220prj/reports/mongoDB_report.txt
END2=$(($(date +%s%N)/1000000))
echo "Execution took: $((END2 - START2)) seconds" >>/itec6220prj/reports/mongoDB_performance.txt

echo "mongo query 3 report...\n ">>/itec6220prj/reports/mongoDB_report.txt
START3=$(($(date +%s%N)/1000000))
sudo ./itec6220prj/dbbenchmark/mongodb/bin/console.sh mongo_match3.txt >>/itec6220prj/reports/mongoDB_report.txt
END3=$(($(date +%s%N)/1000000))
echo "Execution took: $((END3 - START3)) seconds" >>/itec6220prj/reports/mongoDB_performance.txt

echo "mongo query 4 report...\n ">>/itec6220prj/reports/mongoDB_report.txt
START4=$(($(date +%s%N)/1000000))
 sudo ./itec6220prj/dbbenchmark/mongodb/bin/console.sh mongo_match4.txt >>/itec6220prj/reports/mongoDB_report.txt
END4=$(($(date +%s%N)/1000000))
echo "Execution took: $((END4 - START4)) seconds" >>/itec6220prj/reports/mongoDB_performance.txt

echo "mongo query 5 report...\n ">>/itec6220prj/reports/mongoDB_report.txt
START5=$(($(date +%s%N)/1000000))
sudo ./itec6220prj/dbbenchmark/mongodb/bin/console.sh mongo_match5.txt >>/itec6220prj/reports/mongoDB_report.txt
END5=$(($(date +%s%N)/1000000))
echo "Execution took: $((END5 - START5)) seconds" >>/itec6220prj/reports/mongoDB_performance.txt

echo "mongo query 6 report...\n ">>/itec6220prj/reports/mongoDB_report.txt
START6=$(($(date +%s%N)/1000000))
sudo ./itec6220prj/dbbenchmark/mongodb/bin/console.sh mongo_match6.txt >>/itec6220prj/reports/mongoDB_report.txt
END6=$(($(date +%s%N)/1000000))
echo "Execution took: $((END6 - START6)) seconds" >>/itec6220prj/reports/mongoDB_performance.txt

echo "mongo query 7 report...\n ">>/itec6220prj/reports/mongoDB_report.txt
START7=$(($(date +%s%N)/1000000))
sudo ./itec6220prj/dbbenchmark/mongodb/bin/console.sh mongo_match7.txt >>/itec6220prj/reports/mongoDB_report.txt
END7=$(($(date +%s%N)/1000000))
echo "Execution took: $((END7 - START7)) seconds" >>/itec6220prj/reports/mongoDB_performance.txt

echo "mongo query 8 report...\n ">>/itec6220prj/reports/mongoDB_report.txt
START8=$(($(date +%s%N)/1000000))
sudo ./itec6220prj/dbbenchmark/mongodb/bin/console.sh mongo_match8.txt >>/itec6220prj/reports/mongoDB_report.txt
END8=$(($(date +%s%N)/1000000))
echo "Execution took: $((END8 - START8)) seconds" >>/itec6220prj/reports/mongoDB_performance.txt

echo "mongo query 9 report...\n ">>/itec6220prj/reports/mongoDB_report.txt
START8=$(($(date +%s%N)/1000000))
sudo ./itec6220prj/dbbenchmark/mongodb/bin/console.sh mongo_match9.txt >>/itec6220prj/reports/mongoDB_report.txt
END8=$(($(date +%s%N)/1000000))
echo "Execution took: $((END8 - START8)) seconds" >>/itec6220prj/reports/mongoDB_performance.txt

echo "mongo query 10 report...\n ">>/itec6220prj/reports/mongoDB_report.txt
START8=$(($(date +%s%N)/1000000))
sudo ./itec6220prj/dbbenchmark/mongodb/bin/console.sh mongo_match10.txt >>/itec6220prj/reports/mongoDB_report.txt
END8=$(($(date +%s%N)/1000000))
echo "Execution took: $((END8 - START8)) seconds" >>/itec6220prj/reports/mongoDB_performance.txt

echo "mongo query 11 report...\n ">>/itec6220prj/reports/mongoDB_report.txt
START8=$(($(date +%s%N)/1000000))
sudo ./itec6220prj/dbbenchmark/mongodb/bin/console.sh mongo_match11.txt >>/itec6220prj/reports/mongoDB_report.txt
END8=$(($(date +%s%N)/1000000))
echo "Execution took: $((END8 - START8)) seconds" >>/itec6220prj/reports/mongoDB_performance.txt

echo "mongo query 12 report...\n ">>/itec6220prj/reports/mongoDB_report.txt
START8=$(($(date +%s%N)/1000000))
sudo ./itec6220prj/dbbenchmark/mongodb/bin/console.sh mongo_match12.txt >>/itec6220prj/reports/mongoDB_report.txt
END8=$(($(date +%s%N)/1000000))
echo "Execution took: $((END8 - START8)) seconds" >>/itec6220prj/reports/mongoDB_performance.txt
