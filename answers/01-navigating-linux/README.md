# Navigating Linux — Answer Key

Begin by changing to the practice directory:
```
$> cd ~/linux-practice
```
#### Assignment #1
Create another directory named ***dir1***
```
$> mkdir dir1
```

Create a file in the newly created directory named ***one.txt***
```
$> touch one.txt
```
Create a file in the newly created directory named ***two.txt***
```
$> touch two.txt
```
Create a file in the newly created directory named ***four.txt***
```
$> touch four.txt
```
#### Assignment #2 
Inside the ***dir1*** directory, create the following list of directories

* one
* two
* three
```
#Option #1
$> mkdir dir1/one
$> mkdir dir1/two
$> mkdir dir1/three

#Option #2 
$> mkdir dir1/one dir1/two dir1/three

#Option #3
$> mkdir dir1/{one,two,three}
```
#### Assignment #3 
Move the txt files in dir1 to their corresponding folders. But move four.txt to the three folder
```
$> mv dir1/one.txt dir1/one/
$> mv dir1/two.txt dir1/two/
$> mv dir1/four.txt dir1/three/
```

#### Assignment #4
Rename four.txt to ***three.txt***
```
$> mv dir1/three/four.txt dir1/three/three.txt
```

#### Assignment #5
Try to view file2, if you have issues, resolve them and note how you resolved them
