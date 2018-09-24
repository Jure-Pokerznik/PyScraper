<table class="table">
              <thead>
                <tr>
                  <th>Name</th>
                  <th>Threads</th>
                  <th>Price</th>
                  <th>Price/Core</th>
                  <th>Store</th>
                  <th>Brand</th>
                  <th>Date</th>
                  <th>Link</th>
                </tr>
              </thead>
              <tbody>
                <?php
                $threadmin = 2;
                $threadmax = 64;
                $pricelow = 0;
                $pricehigh = 3000;
                $pricetotallow = 10;
                $pricetotalhigh = 50;
                $datestart = 20180901;
                $dateend = 20191230;


                $result = mysqli_query($con,"SELECT * FROM cpu
                 WHERE threads BETWEEN $threadmin AND $threadmax AND
                 price BETWEEN $pricelow AND $pricehigh AND 
                 price_percore BETWEEN $pricetotallow AND $pricetotalhigh AND
                 date BETWEEN $datestart AND $dateend");

                while($row = mysqli_fetch_array($result))
                {
                ?>
                <tr>
                  <td><?php echo $row['name'] ?></td>
                  <td><?php echo $row['threads'] ?></td>
                  <td><?php echo $row['price'] ?> €</td>
                  <td><?php echo $row['price_percore'] ?> €/thread</td>
                  <td><?php echo $row['store'] ?></td>
                  <td><?php echo $row['brand'] ?></td>
                  <td><?php echo $row['date'] ?></td>
                  <td><a href="<?php echo $row['href'] ?>"target="_blank">LINK</a></td>

                </tr>
             <?php
           }
           mysqli_close($con);
           ?>
           </tbody>
             </table>