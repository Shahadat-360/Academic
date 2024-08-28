<!DOCTYPE html>
<html lang="en">

<head>
    <title>Document</title>
</head>
<?php
function billCalculate($unit){
    $unit_cost_first  = 3.50;
    $unit_cost_second = 4.00;
    $unit_cost_third  = 5.20;
    $unit_cost_fourth = 6.50;
    if($unit<=50){
        $bill = $unit_cost_first * $unit;
    }
    else if($unit<=100){
        $temp=$unit_cost_first*50;
        $bill = $temp+($unit - 50) * $unit_cost_second;
    }
    else if($unit<=200){
        $temp = $unit_cost_first * 50;
        $temp = $temp + $unit_cost_second * 100;
        $bill = $temp + ($unit - 150) * $unit_cost_third;
    }
    else{
        $temp = $unit_cost_first * 50;
        $temp = $temp + $unit_cost_second * 100;
        $temp = $temp + $unit_cost_third * 200;
        $bill = $temp + ($unit - 350) * $unit_cost_fourth;
    }
    return number_format($bill, 2, ',', ''); 
}
$result_str = $result = '';
if(isset($_POST['unit_submit'])){
    $units = $_POST['units'];
    if(!empty($units)){
        $result = billCalculate($units);
        $result_str = 'Total Amount ' . $units . ' units= ' . $result . ' tk';
    }
}
?>

<body>
    <div class="calculator">
        <h1>Calculate Electricity Bill</h1>
        <form action="" method="post">
            <input type="number" name="units">
            <input type="submit" name="unit_submit" value="submit">
        </form>
    </div>
    <div>
        <?php
        echo "<br>".$result_str;
        ?>
    </div>
</body>

</html>