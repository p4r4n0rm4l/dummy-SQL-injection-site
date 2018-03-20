<?php
$connection = mysqli_connect('IP','username','password','test_server');

	$id = $_GET['id'];
	$query = "Select * from articles where id=".$id; 
	$result = mysqli_query($connection,$query);

	$row = mysqli_fetch_assoc($result);
	$article = $row['article'];
	$info = $row['info'];
	$author = $row['author'];

echo '
<!doctype html>
<title>SQL Injection Demo</title>
<style>
  * {
   box-sizing: border-box; 
  }
  body {
    margin: 0;
  }
  #main {
    display: flex;
    min-height: calc(100vh - 40vh);
  }
  #main > article {
    flex: 1;
  }
  #main > nav, 
  #main > aside {
    flex: 0 0 20vw;
    background: beige;
  }
  #main > nav {
    order: -1;
  }
  header, footer, article, nav, aside {
    padding: 1em;
  }
  header, footer {
    background: yellowgreen;
    height: 20vh;
  }
</style>
<body>
  <header>';
  echo $article;
  echo '</header>
  <div id="main">
    <article>';
	echo $info;
	echo '</article>
  </div>
  <footer>';
   echo $author;
   echo'</footer>
	</body>';
mysqli_close($connection);
?>