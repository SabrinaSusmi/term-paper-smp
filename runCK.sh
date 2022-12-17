 cat /RefactoredCommits.txt | while read line; 
 do 
 cd /project_directory; 
 echo "commint id:  ${line::-1}"; 
 git checkout ${line::-1} -f; 
 cd /ck-master/target; 
 java -jar ck-0.7.1-SNAPSHOT-jar-with-dependencies.jar /project_path true 0 False output_path/${line::-1}; 
 done   

# cat /mnt/c/Users/User/Downloads/try2/try2/ta4j/moveMethodRefactoredCommits.txt | while read line; do cd /mnt/c/Users/User/Downloads/ta4j/ta4j; echo "commint id:  ${line::-1}"; git checkout ${line::-1} -f; cd /mnt/c/Users/User/Downloads/ck-master/target; java -jar ck-0.7.1-SNAPSHOT-jar-with-dependencies.jar /mnt/c/Users/User/Downloads/ta4j/ta4j true 0 False /mnt/c/Users/User/Downloads/outputs/ta4j/moveMethod/${line::-1}; done   
