<?php require_once 'core/dbConfig.php'; ?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Rentals</title>
  <link rel="stylesheet" href="styles.css">
</head>
<body>
  <h2>Rentals From (September-November)</h2>
    <?php
    $stmt = $pdo->prepare("SELECT
                                customers.driver_license_number AS license_number,
                                CONCAT(customers.first_name, ' ', customers.last_name) AS customers,
                                CONCAT(cars.manufacturer, ' ', cars.model) AS vehicle,
                                rentals.rental_start_date AS date_rented,
                                payments.amount AS amount_paid
                          FROM cars
                          INNER JOIN rentals ON cars.car_id = rentals.car_id
                          JOIN customers ON rentals.customer_id = customers.customer_id
                          JOIN payments ON rentals.rental_id = payments.rental_id
                          ORDER BY date_rented ASC");
    $executeQuery = $stmt->execute();

    if ($executeQuery){
      $rental_info = $stmt->fetchAll();
    }
    else{
      echo "Query failed";
    }
    ?>
    <table>
      <tr>
        <th>License Number</th>
        <th>Customers</th>
        <th>Vehicle</th>
        <th>Date Rented</th>
        <th>Amount Paid</th>
      </tr>
      <?php foreach ($rental_info as $row): ?>
      <tr>
        <td><?php echo ($row['license_number']); ?></td>
        <td><?php echo ($row['customers']); ?></td>
        <td><?php echo ($row['vehicle']); ?></td>
        <td><?php echo ($row['date_rented']); ?></td>
        <td><?php echo ($row['amount_paid']); ?></td>
      </tr>
      <?php endforeach ?>
    </table>
</body>
</html>