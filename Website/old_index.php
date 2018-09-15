	<h1>Hard Drives List</h1>

	 
 <h2>All HDD</h2>

  <?php

    $all = mysqli_query($con, "SELECT * FROM hdd ORDER BY id ASC");//name,size,price,priceTB,date

    while($line = mysqli_fetch_array($all)){ 

      ?>
      <div class="row">

        <div class="row">

        <h3><?php echo $line["name"]."</h3>

        Size: "?>

        <?php echo $line["size"]?> TB<br />

        Price: <?php echo $line["price"]?><br /> 
		Per TB: <?php echo $line["priceTB"]?><br />
		Date added: <?php echo $line["date"]?><br />

        </div>

      </div>

      <?php  }; 

      mysqli_close($con);

  ?>