<?php

define('HOST_NAME', 'localhost');
define('DB_USER', 'root');
define('DB_PASS', '');
define('DB_NAME', 'triskacode');

$mysqli = new mysqli(HOST_NAME, DB_USER, DB_PASS, DB_NAME);

if ($mysqli->connect_error) {
    die('Error (' . $mysqli->connect_errno . ') ' . $mysqli->connect_error);
}

$sql_get_all_data = "SELECT * FROM `triska_user`";
$get_all_data = array();

if ($result = $mysqli->query($sql_get_all_data)) {

    while ($row = $result->fetch_assoc()) {
        $get_all_data[] = $row;
    }
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>HOME - TKJ3</title>
</head>

<body>
    <h1 style="text-align:center">Daftar anak laki - laki kelas XI TKJ 3</h1>
    <table border="1px" align="center" cellpadding="5px" width="1000px">
        <thead>
            <tr>
                <th width="150px">Nis</th>
                <th width="300px">Nama</th>
                <th width="200px">Jenis kelamin</th>
                <th width="350px">alamat</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach($get_all_data as $data) : ?>
                <tr>
                    <td><?php echo $data['nis']; ?></td>
                    <td><?php echo $data['nama']; ?></td>
                    <td><?php echo $data['jenis_kelamin']; ?></td>
                    <td><?php echo $data['alamat']; ?></td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</body>

</html>