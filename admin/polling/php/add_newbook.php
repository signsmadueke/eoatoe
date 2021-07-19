<?php

require_once "../../includes/functions/config.php";

$result = AddNewBook($_POST);

if ($result === true) {
    echo "true";
} else {
    $errors = $result;
    echo json_encode($errors);
}
