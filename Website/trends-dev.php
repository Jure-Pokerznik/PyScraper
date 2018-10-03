<?php
include "head.php";
include "navbar.php";
include "connect.php";
//include "content_small.php";
$sql120 = "SELECT * FROM ssd WHERE size = '120'";
$sql128 = "SELECT * FROM ssd WHERE size = '128'";
$sql240 = "SELECT * FROM ssd WHERE size = '240'";
$sql250 = "SELECT * FROM ssd WHERE size = '250'";
$sql256 = "SELECT * FROM ssd WHERE size = '256'";
$sql480 = "SELECT * FROM ssd WHERE size = '480'";
$sql500 = "SELECT * FROM ssd WHERE size = '500'";
$sql512 = "SELECT * FROM ssd WHERE size = '512'";
$sql960 = "SELECT * FROM ssd WHERE size = '960'";
$sql1000 = "SELECT * FROM ssd WHERE size = '1000'";
$sql2000 = "SELECT * FROM ssd WHERE size = '2000'";
$sql4000 = "SELECT * FROM ssd WHERE size = '4000'";

$result120 = mysqli_query($con, $sql120);
$result128 = mysqli_query($con, $sql128);
$result240 = mysqli_query($con, $sql240);
$result250 = mysqli_query($con, $sql250);
$result256 = mysqli_query($con, $sql256);
$result480 = mysqli_query($con, $sql480);
$result500 = mysqli_query($con, $sql500);
$result512 = mysqli_query($con, $sql512);
$result960 = mysqli_query($con, $sql960);
$result1000 = mysqli_query($con, $sql1000);
$result2000 = mysqli_query($con, $sql2000);
$result4000 = mysqli_query($con, $sql4000);
$ssd120 = "";
$ssd128 = "";
$ssd240 = "";
$ssd250 = "";
$ssd256 = "";
$ssd480 = "";
$ssd500 = "";
$ssd512 = "";
$ssd960 = "";
$ssd1000 = "";
$ssd2000 = "";
$ssd4000 = "";

while ($row1 = mysqli_fetch_array($result120)){
  $ssd120 .="{date:'".$row1["date"]."', price:".$row1["price"]."}, ";
};
$ssd120 = substr ($ssd120, 0, -2);

?>
<div class="container">
    <div class="row justify-content-md-center justify-content-sm-center justify-content-lg-center justify-content-xs-center">
        <div class="col-sm-12 col-md-12 col-lg-9">
            <h1 align="center"> Solid State Drives</h1>
            <h2> 120GB</h2>
              <div id="ssd120" style="height: 250px;"></div>
              <?php print $ssd120 ?>
            <h2> 2TB</h2>
              <div id="hdd2tb" style="height: 250px;"></div>
            <h2> 3TB</h2>
              <div id="hdd3tb" style="height: 250px;"></div>
            <h2> 4TB</h2>
              <div id="hdd4tb" style="height: 250px;"></div>
            <h2> 5TB</h2>
              <div id="hdd5tb" style="height: 250px;"></div>
            <h2> 6TB</h2>
              <div id="hdd6tb" style="height: 250px;"></div>
            <h2> 8TB</h2>
              <div id="hdd8tb" style="height: 250px;"></div>
            <h2> 10TB</h2>
              <div id="hdd10tb" style="height: 250px;"></div>
            <h2> 12TB</h2>
              <div id="hdd12tb" style="height: 250px;"></div>
        </div>
    </div>
</div>

<?php
include "footer.php";
?>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.min.js"></script>
<script>
new Morris.Line({

  element: 'ssd120',
  data: [
      <?php echo $ssd120 ?>
  ],
  xkey: 'date',
  ykeys: ['price'],
  labels: ['Price']
});

new Morris.Line({

  element: 'hdd2tb',
  data: [
      <?php echo $hdd2tb ?>
  ],
  xkey: 'date',
  ykeys: ['price'],
  labels: ['Price']
});

new Morris.Line({

  element: 'hdd3tb',
  data: [
      <?php echo $hdd3tb ?>
  ],
  xkey: 'date',
  ykeys: ['price'],
  labels: ['Price']
});

new Morris.Line({

  element: 'hdd4tb',
  data: [
      <?php echo $hdd4tb ?>
  ],
  xkey: 'date',
  ykeys: ['price'],
  labels: ['Price']
});

new Morris.Line({

  element: 'hdd5tb',
  data: [
      <?php echo $hdd5tb ?>
  ],
  
  xkey: 'date',
  ykeys: ['price'],
  labels: ['Price']
});

new Morris.Line({

  element: 'hdd6tb',
  data: [
      <?php echo $hdd6tb ?>
  ],
  
  xkey: 'date',
  ykeys: ['price'],
  labels: ['Price']
});

new Morris.Line({

  element: 'hdd8tb',
  data: [
      <?php echo $hdd8tb ?>
  ],
  
  xkey: 'date',
  ykeys: ['price'],
  labels: ['Price']
});

new Morris.Line({

  element: 'hdd10tb',
  data: [
      <?php echo $hdd10tb ?>
  ],
  xkey: 'date',
  ykeys: ['price'],
  labels: ['Price']
});

new Morris.Line({

  element: 'hdd12tb',
  data: [
      <?php echo $hdd12tb ?>
  ],
  xkey: 'date',
  ykeys: ['price'],
  labels: ['Price']
});
</script>
  </body>
</html>