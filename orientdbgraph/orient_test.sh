#!/bin/bash

sudo ./home/johnwill4a/dbbenchmark/orientdb-3.0.17/bin/server.sh

echo "Orientdb testing started...\n ">>/home/johnwill4a/reports/orient_report.txt
START=$(($(date +%s%N)/1000000))
sudo ./home/johnwill4a/dbbenchmark/orientdb-3.0.17/bin/oetl.sh /home/johnwill4a/RateUsers.json >>/home/johnwill4a/reports/orient_report.txt
sudo ./home/johnwill4a/dbbenchmark/orientdb-3.0.17/bin/oetl.sh /home/johnwill4a/HasRated.json >>/home/johnwill4a/reports/orient_report.txt
END=$(($(date +%s%N)/1000000))
echo "Import Execution took: $((END - START)) million seconds" >>/home/johnwill4a/reports/orient_performance.txt
echo "orient query 1 report...\n ">>/home/johnwill4a/reports/orient_report.txt
START1=$(($(date +%s%N)/1000000))
sudo ./home/johnwill4a/dbbenchmark/orientdb-3.0.17/bin/console.sh orient_match1.txt >>/home/johnwill4a/reports/orient_report.txt
END1=$(($(date +%s%N)/1000000))
echo "orient query 1 Execution took: $((END1 - START1)) million seconds" >>/home/johnwill4a/reports/orient_performance.txt
echo "orient query 2 report...\n ">>/home/johnwill4a/reports/orient_report.txt
START2=$(($(date +%s%N)/1000000))
sudo ./home/johnwill4a/dbbenchmark/orientdb-3.0.17/bin/console.sh orient_match2.txt >>/home/johnwill4a/reports/orient_report.txt
END2=$(($(date +%s%N)/1000000))
echo "orient query 2 Execution took: $((END2 - START2)) million seconds" >>/home/johnwill4a/reports/orient_performance.txt
echo "orient query 3 report...\n ">>/home/johnwill4a/reports/orient_report.txt
START3=$(($(date +%s%N)/1000000))
sudo ./home/johnwill4a/dbbenchmark/orientdb-3.0.17/bin/console.sh orient_match3.txt >>/home/johnwill4a/reports/orient_report.txt
END3=$(($(date +%s%N)/1000000))
echo "orient query 3 Execution took: $((END3 - START3)) million seconds" >>/home/johnwill4a/reports/orient_performance.txt
echo "orient query 4 report...\n ">>/home/johnwill4a/reports/orient_report.txt
START4=$(($(date +%s%N)/1000000))
 sudo ./home/johnwill4a/dbbenchmark/orientdb-3.0.17/bin/console.sh orient_match4.txt >>/home/johnwill4a/reports/orient_report.txt
END4=$(($(date +%s%N)/1000000))
echo "orient query 4 Execution took: $((END4 - START4)) million seconds" >>/home/johnwill4a/reports/orient_performance.txt
echo "orient query 5 report...\n ">>/home/johnwill4a/reports/orient_report.txt
START5=$(($(date +%s%N)/1000000))
sudo ./home/johnwill4a/dbbenchmark/orientdb-3.0.17/bin/console.sh orient_match5.txt >>/home/johnwill4a/reports/orient_report.txt
END5=$(($(date +%s%N)/1000000))
echo "orient query 5 Execution took: $((END5 - START5)) million seconds" >>/home/johnwill4a/reports/orient_performance.txt
echo "orient query 6 report...\n ">>/home/johnwill4a/reports/orient_report.txt
START6=$(($(date +%s%N)/1000000))
sudo ./home/johnwill4a/dbbenchmark/orientdb-3.0.17/bin/console.sh orient_match6.txt >>/home/johnwill4a/reports/orient_report.txt
END6=$(($(date +%s%N)/1000000))
echo "orient query 6 Execution took: $((END6 - START6)) million seconds" >>/home/johnwill4a/reports/orient_performance.txt
echo "orient query 7 report...\n ">>/home/johnwill4a/reports/orient_report.txt
START7=$(($(date +%s%N)/1000000))
sudo ./home/johnwill4a/dbbenchmark/orientdb-3.0.17/bin/console.sh orient_match7.txt >>/home/johnwill4a/reports/orient_report.txt
END7=$(($(date +%s%N)/1000000))
echo "orient query 7 Execution took: $((END7 - START7)) million seconds" >>/home/johnwill4a/reports/orient_performance.txt
echo "orient query 8 report...\n ">>/home/johnwill4a/reports/orient_report.txt
START8=$(($(date +%s%N)/1000000))
sudo ./home/johnwill4a/dbbenchmark/orientdb-3.0.17/bin/console.sh orient_match8.txt >>/home/johnwill4a/reports/orient_report.txt
END8=$(($(date +%s%N)/1000000))
echo "orient query 8 Execution took: $((END8 - START8)) million seconds" >>/home/johnwill4a/reports/orient_performance.txt
echo "orient query 9 report...\n ">>/home/johnwill4a/reports/orient_report.txt
START9=$(($(date +%s%N)/1000000))
sudo ./home/johnwill4a/dbbenchmark/orientdb-3.0.17/bin/console.sh orient_match9.txt >>/home/johnwill4a/reports/orient_report.txt
END9=$(($(date +%s%N)/1000000))
echo "orient query 9 Execution took: $((END9 - START9)) million seconds" >>/home/johnwill4a/reports/orient_performance.txt
echo "orient query 10 report...\n ">>/home/johnwill4a/reports/orient_report.txt
START10=$(($(date +%s%N)/1000000))
sudo ./home/johnwill4a/dbbenchmark/orientdb-3.0.17/bin/console.sh orient_match10.txt >>/home/johnwill4a/reports/orient_report.txt
END10=$(($(date +%s%N)/1000000))
echo "orient query 10 Execution took: $((END10 - START10)) million seconds" >>/home/johnwill4a/reports/orient_performance.txt
echo "orient query 11 report...\n ">>/home/johnwill4a/reports/orient_report.txt
START11=$(($(date +%s%N)/1000000))
sudo ./home/johnwill4a/dbbenchmark/orientdb-3.0.17/bin/console.sh orient_match11.txt >>/home/johnwill4a/reports/orient_report.txt
END11=$(($(date +%s%N)/1000000))
echo "orient query 11 Execution took: $((END11 - START11)) million seconds" >>/home/johnwill4a/reports/orient_performance.txt
echo "orient query 12 report...\n ">>/home/johnwill4a/reports/orient_report.txt
START12=$(($(date +%s%N)/1000000))
sudo ./home/johnwill4a/dbbenchmark/orientdb-3.0.17/bin/console.sh orient_match12.txt >>/home/johnwill4a/reports/orient_report.txt
END12=$(($(date +%s%N)/1000000))
echo "orient query 12 Execution took: $((END12 - START12)) million seconds" >>/home/johnwill4a/reports/orient_performance.txt
echo "orient query 13 report...\n ">>/home/johnwill4a/reports/orient_report.txt
START13=$(($(date +%s%N)/1000000))
sudo ./home/johnwill4a/dbbenchmark/orientdb-3.0.17/bin/console.sh orient_match13.txt >>/home/johnwill4a/reports/orient_report.txt
END13=$(($(date +%s%N)/1000000))
echo "orient query 13 Execution took: $((END13 - START13)) million seconds" >>/home/johnwill4a/reports/orient_performance.txt
echo "orient query 14 report...\n ">>/home/johnwill4a/reports/orient_report.txt
START14=$(($(date +%s%N)/1000000))
sudo ./home/johnwill4a/dbbenchmark/orientdb-3.0.17/bin/console.sh orient_match14.txt >>/home/johnwill4a/reports/orient_report.txt
END14=$(($(date +%s%N)/1000000))
echo "orient query 14 Execution took: $((END14 - START14)) million seconds" >>/home/johnwill4a/reports/orient_performance.txt
echo "orient query 15 report...\n ">>/home/johnwill4a/reports/orient_report.txt
START15=$(($(date +%s%N)/1000000))
sudo ./home/johnwill4a/dbbenchmark/orientdb-3.0.17/bin/console.sh orient_match15.txt >>/home/johnwill4a/reports/orient_report.txt
END15=$(($(date +%s%N)/1000000))
echo "orient query 15 Execution took: $((END15 - START15)) million seconds" >>/home/johnwill4a/reports/orient_performance.txt
echo "orient query 16 report...\n ">>/home/johnwill4a/reports/orient_report.txt
START16=$(($(date +%s%N)/1000000))
sudo ./home/johnwill4a/dbbenchmark/orientdb-3.0.17/bin/console.sh orient_match16.txt >>/home/johnwill4a/reports/orient_report.txt
END16=$(($(date +%s%N)/1000000))
echo "orient query 16 Execution took: $((END16 - START16)) million seconds" >>/home/johnwill4a/reports/orient_performance.txt
