<?php

include('connect_db.php');

$page = $_GET['page'];



if($page=="home"){
$sql="SELECT * FROM content WHERE page_name = 'home'";
$result = mysqli_query($con,$sql);

if (!$result) {
    printf("Error: %s\n", mysqli_error($con));
    exit();
}
$content_array = array();
while($row = mysqli_fetch_array($result)) {
    $content_array[$row['section_name']] = $row['content'];
}
echo json_encode($content_array);
mysqli_close($con);
}
elseif($page=="skills"){
    $sql="SELECT * FROM skills";
    $result = mysqli_query($con,$sql);
    
    if (!$result) {
        printf("Error: %s\n", mysqli_error($con));
        exit();
    }
    $content_array = array();
    while($row = mysqli_fetch_array($result)) {
        $content_array[$row['type']] = $row['image_path'];
    }
    echo json_encode($content_array);
    mysqli_close($con);
}
elseif($page=="work-image"){
    $sql="SELECT * FROM mywork";
    $result = mysqli_query($con,$sql);
    
    if (!$result) {
        printf("Error: %s\n", mysqli_error($con));
        exit();
    }
    $imagepath = array();

    while($row = mysqli_fetch_array($result)) {
        $imagepath[$row['id']] = $row['imagepath'];
    }

    echo json_encode($imagepath);
    
    mysqli_close($con);
}
elseif($page=="work-title"){
    $sql="SELECT * FROM mywork";
    $result = mysqli_query($con,$sql);
    
    if (!$result) {
        printf("Error: %s\n", mysqli_error($con));
        exit();
    }
    $title = array();
    while($row = mysqli_fetch_array($result)) {
        
        $title[$row['id']] = $row['title'];
        
    }

    echo json_encode($title);
    
    mysqli_close($con);
}
elseif($page=="work-summary"){
    $sql="SELECT * FROM mywork";
    $result = mysqli_query($con,$sql);
    
    if (!$result) {
        printf("Error: %s\n", mysqli_error($con));
        exit();
    }
    $summary = array();
    while($row = mysqli_fetch_array($result)) {
        $response[] = $row;
    }

    echo json_encode($response);
    
    mysqli_close($con);
}
else{
    echo "Invalid Ajax Calls";
}
?>