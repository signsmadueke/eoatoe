<?php

require_once "../../includes/functions/config.php";
blockUrlHackers();

if (isset($_GET['book_id'])) {
    $book_id = $_GET['book_id'];

    $result = editBook($_POST, $book_id);

    if ($result === true) {
        echo "true";
    } else {
        $errors = $result;
        echo json_encode($errors);
    }
}

if (isset($_GET['devotion_id'])) {
    $devotion_id = $_GET['devotion_id'];

    $result = editDevotion($_POST, $devotion_id);

    if ($result === true) {
        echo "true";
    } else {
        $errors = $result;
        echo json_encode($errors);
    }
}

if (isset($_GET['meditation_id'])) {
    $meditation_id = $_GET['meditation_id'];

    $result = editMeditation($_POST, $meditation_id);

    if ($result === true) {
        echo "true";
    } else {
        $errors = $result;
        echo json_encode($errors);
    }
}

if (isset($_GET['prayer_id'])) {
    $prayer_id = $_GET['prayer_id'];

    $result = editPrayer($_POST, $prayer_id);

    if ($result === true) {
        echo "true";
    } else {
        $errors = $result;
        echo json_encode($errors);
    }
}

if (isset($_GET['counsel_id'])) {
    $counsel_id = $_GET['counsel_id'];

    $result = editCounsel($_POST, $counsel_id);

    if ($result === true) {
        echo "true";
    } else {
        $errors = $result;
        echo json_encode($errors);
    }
}

if (isset($_GET['freebook_id'])) {
    $freebook_id = $_GET['freebook_id'];

    $result = editFreeBook($_POST, $freebook_id);

    if ($result === true) {
        echo "true";
    } else {
        $errors = $result;
        echo json_encode($errors);
    }
}

if (isset($_GET['newbook_id'])) {
    $newbook_id = $_GET['newbook_id'];

    $result = editNewBook($_POST, $newbook_id);

    if ($result === true) {
        echo "true";
    } else {
        $errors = $result;
        echo json_encode($errors);
    }
}

if (isset($_GET['progressbook_id'])) {
    $progressbook_id = $_GET['progressbook_id'];

    $result = editProgressBook($_POST, $progressbook_id);

    if ($result === true) {
        echo "true";
    } else {
        $errors = $result;
        echo json_encode($errors);
    }
}