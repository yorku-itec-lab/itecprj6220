#!/bin/bash
echo "neo4j testing started...\n ">>/home/johnwill4a/reports/neo4j_report.txt
START=$(($(date +%s%N)/1000000))
 /usr/bin/cypher-shell -u neo4j -p passw0rd < neo_dataimport.txt >>/home/johnwill4a/reports/neo4j_report.txt
END=$(($(date +%s%N)/1000000))
echo "Import Execution took: $((END - START)) seconds" >>/home/johnwill4a/reports/neo4j_performance.txt
echo "neo4j query 1 report...\n ">>/home/johnwill4a/reports/neo4j_report.txt
START1=$(($(date +%s%N)/1000000))
 /usr/bin/cypher-shell -u neo4j -p passw0rd < neo_match1.txt >>/home/johnwill4a/reports/neo4j_report.txt
END1=$(($(date +%s%N)/1000000))
echo "Execution took: $((END1 - START1)) seconds" >>/home/johnwill4a/reports/neo4j_performance.txt
echo "neo4j query 2 report...\n ">>/home/johnwill4a/reports/neo4j_report.txt>
START2=$(($(date +%s%N)/1000000))
 /usr/bin/cypher-shell -u neo4j -p passw0rd < neo_match2.txt >>/home/johnwill4a/reports/neo4j_report.txt
END2=$(($(date +%s%N)/1000000))
echo "Execution took: $((END2 - START2)) seconds" >>/home/johnwill4a/reports/neo4j_performance.txt
echo "neo4j query 3 report...\n ">>/home/johnwill4a/reports/neo4j_report.txt
START3=$(($(date +%s%N)/1000000))
 /usr/bin/cypher-shell -u neo4j -p passw0rd < neo_match3.txt >>/home/johnwill4a/reports/neo4j_report.txt
END3=$(($(date +%s%N)/1000000))
echo "Execution took: $((END3 - START3)) seconds" >>/home/johnwill4a/reports/neo4j_performance.txt
echo "neo4j query 4 report...\n ">>/home/johnwill4a/reports/neo4j_report.txt
START4=$(($(date +%s%N)/1000000))
 /usr/bin/cypher-shell -u neo4j -p passw0rd < neo_match4.txt >>/home/johnwill4a/reports/neo4j_report.txt
END4=$(($(date +%s%N)/1000000))
echo "Execution took: $((END4 - START4)) seconds" >>/home/johnwill4a/reports/neo4j_performance.txt
echo "neo4j query 5 report...\n ">>/home/johnwill4a/reports/neo4j_report.txt
START5=$(($(date +%s%N)/1000000))
 /usr/bin/cypher-shell -u neo4j -p passw0rd < neo_match5.txt >>/home/johnwill4a/reports/neo4j_report.txt
END5=$(($(date +%s%N)/1000000))
echo "Execution took: $((END5 - START5)) seconds" >>/home/johnwill4a/reports/neo4j_performance.txt
echo "neo4j query 6 report...\n ">>/home/johnwill4a/reports/neo4j_report.txt
START6=$(($(date +%s%N)/1000000))
 /usr/bin/cypher-shell -u neo4j -p passw0rd < neo_match6.txt >>/home/johnwill4a/reports/neo4j_report.txt
END6=$(($(date +%s%N)/1000000))
echo "Execution took: $((END6 - START6)) seconds" >>/home/johnwill4a/reports/neo4j_performance.txt
echo "neo4j query 7 report...\n ">>/home/johnwill4a/reports/neo4j_report.txt
START7=$(($(date +%s%N)/1000000))
 /usr/bin/cypher-shell -u neo4j -p passw0rd < neo_match7.txt >>/home/johnwill4a/reports/neo4j_report.txt
END7=$(($(date +%s%N)/1000000))
echo "Execution took: $((END7 - START7)) seconds" >>/home/johnwill4a/reports/neo4j_performance.txt
echo "neo4j query 8 report...\n ">>/home/johnwill4a/reports/neo4j_report.txt
START8=$(($(date +%s%N)/1000000))
 /usr/bin/cypher-shell -u neo4j -p passw0rd < neo_match8.txt >>/home/johnwill4a/reports/neo4j_report.txt
END8=$(($(date +%s%N)/1000000))echo "neo4j query 9 report...\n ">>/home/johnwill4a/reports/neo4j_report.txt
echo "Execution took: $((END8 - START8)) seconds" >>/home/johnwill4a/reports/neo4j_performance.txt
echo "neo4j query 9 report...\n ">>/home/johnwill4a/reports/neo4j_report.txt
START9=$(($(date +%s%N)/1000000))
 /usr/bin/cypher-shell -u neo4j -p passw0rd < neo_match9.txt >>/home/johnwill4a/reports/neo4j_report.txt
END9=$(($(date +%s%N)/1000000))
echo "Execution took: $((END9 - START9)) seconds" >>/home/johnwill4a/reports/neo4j_performance.txt
echo "neo4j query 10 report...\n ">>/home/johnwill4a/reports/neo4j_report.txt
START10=$(($(date +%s%N)/1000000))
/usr/bin/cypher-shell -u neo4j -p passw0rd < neo_match10.txt >>/home/johnwill4a/reports/neo4j_report.txt
END10=$(($(date +%s%N)/1000000))
echo "Execution took: $((END10 - START10)) seconds" >>/home/johnwill4a/reports/neo4j_performance.txt
echo "neo4j query 11 report...\n ">>/home/johnwill4a/reports/neo4j_report.txt
START11=$(($(date +%s%N)/1000000))
/usr/bin/cypher-shell -u neo4j -p passw0rd < neo_match11.txt >>/home/johnwill4a/reports/neo4j_report.txt
END11=$(($(date +%s%N)/1000000))
echo "Execution took: $((END11 - START11)) seconds" >>/home/johnwill4a/reports/neo4j_performance.txt
echo "neo4j query 12 report...\n ">>/home/johnwill4a/reports/neo4j_report.txt
START12=$(($(date +%s%N)/1000000))
/usr/bin/cypher-shell -u neo4j -p passw0rd < neo_match12.txt >>/home/johnwill4a/reports/neo4j_report.txt
END12=$(($(date +%s%N)/1000000))
echo "Execution took: $((END12 - START12)) seconds" >>/home/johnwill4a/reports/neo4j_performance.txt


