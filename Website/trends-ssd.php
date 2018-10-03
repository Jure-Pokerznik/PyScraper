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

while ($row2 = mysqli_fetch_array($result128)){
    $ssd128 .="{date:'".$row2["date"]."', price:".$row2["price"]."}, ";
  };
$ssd128 = substr ($ssd128, 0, -2);

while ($row3 = mysqli_fetch_array($result240)){
    $ssd240 .="{date:'".$row3["date"]."', price:".$row3["price"]."}, ";
  };
$ssd240 = substr ($ssd240, 0, -2);

while ($row = mysqli_fetch_array($result250)){
    $ssd250 .="{date:'".$row["date"]."', price:".$row["price"]."}, ";
  };
$ssd250 = substr ($ssd250, 0, -2);

while ($row = mysqli_fetch_array($result256)){
    $ssd256 .="{date:'".$row["date"]."', price:".$row["price"]."}, ";
  };
$ssd256 = substr ($ssd256, 0, -2);

while ($row = mysqli_fetch_array($result480)){
    $ssd480 .="{date:'".$row["date"]."', price:".$row["price"]."}, ";
  };
$ssd480 = substr ($ssd480, 0, -2);
while ($row = mysqli_fetch_array($result500)){
  $ssd500 .="{date:'".$row["date"]."', price:".$row["price"]."}, ";
};
$ssd500 = substr ($ssd500, 0, -2);
while ($row = mysqli_fetch_array($result512)){
  $ssd512 .="{date:'".$row["date"]."', price:".$row["price"]."}, ";
};
$ssd512 = substr ($ssd512, 0, -2);
while ($row = mysqli_fetch_array($result960)){
  $ssd960 .="{date:'".$row["date"]."', price:".$row["price"]."}, ";
};
$ssd960 = substr ($ssd960, 0, -2);
while ($row = mysqli_fetch_array($result1000)){
  $ssd1000 .="{date:'".$row["date"]."', price:".$row["price"]."}, ";
};
$ssd1000 = substr ($ssd1000, 0, -2);
while ($row = mysqli_fetch_array($result2000)){
  $ssd2000 .="{date:'".$row["date"]."', price:".$row["price"]."}, ";
};
$ssd2000 = substr ($ssd2000, 0, -2);
while ($row = mysqli_fetch_array($result4000)){
  $ssd4000 .="{date:'".$row["date"]."', price:".$row["price"]."}, ";
};
$ssd4000 = substr ($ssd4000, 0, -2);

?>
<div class="container">
    <div class="row justify-content-md-center justify-content-sm-center justify-content-lg-center justify-content-xs-center">
        <div class="col-sm-12 col-md-12 col-lg-9">
            <h1 align="center"> Solid State Drives</h1>
            <h2> 120GB</h2>
              <div id="ssd120" style="height: 250px;"></div>
            <h2> 128GB</h2>
              <div id="ssd128" style="height: 250px;"></div>
            <h2> 240GB</h2>
              <div id="ssd240" style="height: 250px;"></div>
            <h2> 250GB</h2>
              <div id="ssd250" style="height: 250px;"></div>
            <h2> 256GB</h2>
              <div id="ssd256" style="height: 250px;"></div>
            <h2> 480GB</h2>
              <div id="ssd480" style="height: 250px;"></div>
            <h2> 500GB</h2>
              <div id="ssd500" style="height: 250px;"></div>
            <h2> 512GB</h2>
              <div id="ssd512" style="height: 250px;"></div>
            <h2> 1000GB</h2>
              <div id="ssd1000" style="height: 250px;"></div>
            <h2> 2000GB</h2>
              <div id="ssd2000" style="height: 250px;"></div>
            <h2> 4000GB</h2>
              <div id="ssd4000" style="height: 250px;"></div>

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
</script>
<script>
new Morris.Line({

  element: 'ssd128',
  data: [
      <?php echo $ssd128 ?>
  ],
  xkey: 'date',
  ykeys: ['price'],
  labels: ['Price']
});
</script>
<script>
new Morris.Line({

  element: 'ssd240',
  data: [
      <?php echo $ssd240 ?>
  ],
  xkey: 'date',
  ykeys: ['price'],
  labels: ['Price']
});
</script>
<script>
new Morris.Line({

  element: 'ssd250',
  data: [
      <?php echo $ssd250 ?>
  ],
  xkey: 'date',
  ykeys: ['price'],
  labels: ['Price']
});
</script>
<script>
new Morris.Line({

  element: 'ssd256',
  data: [
      <?php echo $ssd256 ?>
  ],
  xkey: 'date',
  ykeys: ['price'],
  labels: ['Price']
});
</script>
<script>
new Morris.Line({

  element: 'ssd480',
  data: [
      <?php echo $ssd480 ?>
  ],
  xkey: 'date',
  ykeys: ['price'],
  labels: ['Price']
});
</script>
<script>
new Morris.Line({

  element: 'ssd500',
  data: [
      <?php echo $ssd500 ?>
  ],
  xkey: 'date',
  ykeys: ['price'],
  labels: ['Price']
});
</script>
<script>
new Morris.Line({

  element: 'ssd512',
  data: [
      <?php echo $ssd512 ?>
  ],
  xkey: 'date',
  ykeys: ['price'],
  labels: ['Price']
});
</script>
<script>
new Morris.Line({

  element: 'ssd1000',
  data: [
      <?php echo $ssd1000 ?>
  ],
  xkey: 'date',
  ykeys: ['price'],
  labels: ['Price']
});
</script>
<script>
new Morris.Line({

  element: 'ssd2000',
  data: [
      <?php echo $ssd2000 ?>
  ],
  xkey: 'date',
  ykeys: ['price'],
  labels: ['Price']
});
</script>
<script>
new Morris.Line({

  element: 'ssd4000',
  data: [
      <?php echo $ssd4000 ?>
  ],
  xkey: 'date',
  ykeys: ['price'],
  labels: ['Price']
});
</script>

  </body>
</html>