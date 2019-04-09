#!/bin/bash



echo "arrangodb testing started...\n ">>/home/johnwill4a/reports/arrango_report.txt
START=$(($(date +%s%N)/1000000))
  sudo arangoimport --server.password "passw0rd" --file /var/lib/neo4j/import/RateUsers.csv --collection=HasRating --type=csv --server.database "bitcoin" >>/home/johnwill4a/reports/arrango_report.txt
  sudo arangoimport --server.password "passw0rd" --file /home/johnwill4a/soc-sign-bitcoinotc.csv --collection=HasRating --type=csv --remove-attribute "TIME" --remove-attribute "RATING" --from-collection-prefix "Rater" --to-collection-prefix "Rater" --server.database "bitcoin" >>/home/johnwill4a/reports/arrango_report.txt
END=$(($(date +%s%N)/1000000))
echo "Import Execution took: $((END - START)) million seconds" >>/home/johnwill4a/reports/arrango_performance.txt

# arrango query put below

echo "arrango query 1 report...\n ">>/home/johnwill4a/reports/arrango_report.txt
START1=$(($(date +%s%N)/1000000))
arangosh --server.database bitcoin --server.password passw0rd --javascript.execute arango_match1.js >> /home/johnwill4a/reports/arrango_report.txt
END1=$(($(date +%s%N)/1000000))
echo "Execution took: $((END1 - START1)) million seconds" >>/home/johnwill4a/reports/arrango_performance.txt

echo "arrango query 2 report...\n ">>/home/johnwill4a/reports/arrango_report.txt
START2=$(($(date +%s%N)/1000000))
arangosh --server.database bitcoin --server.password passw0rd --javascript.execute arango_match2.js >>/home/johnwill4a/reports/arrango_report.txt
END2=$(($(date +%s%N)/1000000))
echo "Execution took: $((END2 - START2)) million seconds" >>/home/johnwill4a/reports/arrango_performance.txt

echo "arrango query 3 report...\n ">>/home/johnwill4a/reports/arrango_report.txt
START3=$(($(date +%s%N)/1000000))
arangosh --server.database bitcoin --server.password passw0rd --javascript.execute arango_match3.js >>/home/johnwill4a/reports/arrango_report.txt
END3=$(($(date +%s%N)/1000000))
echo "Execution took: $((END3 - START3)) million seconds" >>/home/johnwill4a/reports/arrango_performance.txt

echo "arrango query 4 report...\n ">>/home/johnwill4a/reports/arrango_report.txt
START4=$(($(date +%s%N)/1000000))
arangosh --server.database bitcoin --server.password passw0rd --javascript.execute arango_match4.js >>/home/johnwill4a/reports/arrango_report.txt
END4=$(($(date +%s%N)/1000000))
echo "Execution took: $((END4 - START4)) million seconds" >>/home/johnwill4a/reports/arrango_performance.txt

echo "arrango query 5 report...\n ">>/home/johnwill4a/reports/arrango_report.txt
START5=$(($(date +%s%N)/1000000))
arangosh --server.database bitcoin --server.password passw0rd --javascript.execute arango_match5.js >>/home/johnwill4a/reports/arrango_report.txt
END5=$(($(date +%s%N)/1000000))
echo "Execution took: $((END5 - START5)) million seconds" >>/home/johnwill4a/reports/arrango_performance.txt

echo "arrango query 6 report...\n ">>/home/johnwill4a/reports/arrango_report.txt
START6=$(($(date +%s%N)/1000000))
arangosh --server.database bitcoin --server.password passw0rd --javascript.execute arango_match6.js >>/home/johnwill4a/reports/arrango_report.txt
END6=$(($(date +%s%N)/1000000))
echo "Execution took: $((END6 - START6)) million seconds" >>/home/johnwill4a/reports/arrango_performance.txt

echo "arrango query 7 report...\n ">>/home/johnwill4a/reports/arrango_report.txt
START7=$(($(date +%s%N)/1000000))
arangosh --server.database bitcoin --server.password passw0rd --javascript.execute arango_match7.js >>/home/johnwill4a/reports/arrango_report.txt
END7=$(($(date +%s%N)/1000000))
echo "Execution took: $((END7 - START7)) million seconds" >>/home/johnwill4a/reports/arrango_performance.txt

echo "arrango query 8 report...\n ">>/home/johnwill4a/reports/arrango_report.txt
START8=$(($(date +%s%N)/1000000))
arangosh --server.database bitcoin --server.password passw0rd --javascript.execute arango_match8.js >>/home/johnwill4a/reports/arrango_report.txt
END8=$(($(date +%s%N)/1000000))
echo "Execution took: $((END8 - START8)) million seconds" >>/home/johnwill4a/reports/arrango_performance.txt

echo "arrango query 9 report...\n ">>/itec6220prj/reports/arangodb_report.txt
START9=$(($(date +%s%N)/1000000))
arangosh --server.database bitcoin --server.password passw0rd --javascript.execute arango_match9.js  >>/itec6220prj/reports/arangodb_report.txt
END9=$(($(date +%s%N)/1000000))
echo "Execution took: $((END9 - START9)) million seconds" >>/itec6220prj/reports/arangodb_performance.txt


echo "arrango query 10 report...\n ">>/itec6220prj/reports/arangodb_report.txt
START10=$(($(date +%s%N)/1000000))
arangosh --server.database bitcoin --server.password passw0rd --javascript.execute arango_match10.js >>/itec6220prj/reports/arangodb_report.txt
END10=$(($(date +%s%N)/1000000))
echo "Execution took: $((END10 - START10)) million seconds" >>/itec6220prj/reports/arangodb_performance.txt


echo "arrango query 11 report...\n ">>/itec6220prj/reports/arangodb_report.txt
START11=$(($(date +%s%N)/1000000))
arangosh --server.database bitcoin --server.password passw0rd --javascript.execute arango_match11.js >>/itec6220prj/reports/arangodb_report.txt
END11=$(($(date +%s%N)/1000000))
echo "Execution took: $((END11 - START11)) million seconds" >>/itec6220prj/reports/arangodb_performance.txt


echo "arrango query 12 report...\n ">>/itec6220prj/reports/arangodb_report.txt
START12=$(($(date +%s%N)/1000000))
arangosh --server.database bitcoin --server.password passw0rd --javascript.execute arango_match12.js >>/itec6220prj/reports/arangodb_report.txt
END12=$(($(date +%s%N)/1000000))
echo "Execution took: $((END12 - START12)) million seconds" >>/itec6220prj/reports/arangodb_performance.txt


echo "arrango query 13 report...\n ">>/itec6220prj/reports/arangodb_report.txt
START13=$(($(date +%s%N)/1000000))
arangosh --server.database bitcoin --server.password passw0rd --javascript.execute arango_match13.js >>/itec6220prj/reports/arangodb_report.txt
END13=$(($(date +%s%N)/1000000))
echo "Execution took: $((END13 - START13)) million seconds" >>/itec6220prj/reports/arangodb_performance.txt

echo "arrango query 14 report...\n ">>/itec6220prj/reports/arangodb_report.txt
START14=$(($(date +%s%N)/1000000))
arangosh --server.database bitcoin --server.password passw0rd --javascript.execute arango_match14.js >>/itec6220prj/reports/arangodb_report.txt
END14=$(($(date +%s%N)/1000000))
echo "Execution took: $((END14 - START14)) million seconds" >>/itec6220prj/reports/arangodb_performance.txt

echo "arrango query 15 report...\n ">>/itec6220prj/reports/arangodb_report.txt
START15=$(($(date +%s%N)/1000000))
arangosh --server.database bitcoin --server.password passw0rd --javascript.execute arango_match15.js >>/itec6220prj/reports/arangodb_report.txt
END15=$(($(date +%s%N)/1000000))
echo "Execution took: $((END15 - START15)) million seconds" >>/itec6220prj/reports/arangodb_performance.txt

echo "arrango query 16 report...\n ">>/itec6220prj/reports/arangodb_report.txt
START16=$(($(date +%s%N)/1000000))
arangosh --server.database bitcoin --server.password passw0rd --javascript.execute arango_match16.js >>/itec6220prj/reports/arangodb_report.txt
END16=$(($(date +%s%N)/1000000))
echo "Execution took: $((END16 - START16)) million seconds" >>/itec6220prj/reports/arangodb_performance.txt
