cat /RefactoredCommits.txt | while read line; 
do 
cd /project_directory; 
id=${line::-1};
coms=`git show ${id}~1 --no-patch --pretty=format:"%H"`; 
echo $coms>> /RefactoredCommits.txt; 
done

#cat /mnt/c/Users/User/Downloads/try2/try2/ta4j/moveMethodRefactoredCommits.txt | while read line; do cd /mnt/c/Users/User/Downloads/ta4j/ta4j; id=${line::-1};echo "hello $id"; coms=`git show ${id}~1 --no-patch --pretty=format:"%H"`; echo $coms>> /mnt/c/Users/User/Downloads/try2/try2/ta4j/moveMethodRefactoredCommits.txt; done
