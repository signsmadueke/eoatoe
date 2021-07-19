<?php

require_once "../../includes/functions/config.php";
blockUrlHackers();

if (isset($_GET['book_id'])) {
    $delete_id = $_GET['book_id'];

    $result = delete("books", "book_id", $delete_id);
    if ($result === true) {
        echo "true";
    } else {
        echo "false";
    }
}

if (isset($_GET['freebook_id'])) {
    $delete_id = $_GET['freebook_id'];

    $result = delete("freebooks", "freebook_id", $delete_id);
    if ($result === true) {
        echo "true";
    } else {
        echo "false";
    }
}

if (isset($_GET['newbook_id'])) {
    $delete_id = $_GET['newbook_id'];

    $result = delete("newbooks", "newbook_id", $delete_id);
    if ($result === true) {
        echo "true";
    } else {
        echo "false";
    }
}

if (isset($_GET['devotion_id'])) {
    $delete_id = $_GET['devotion_id'];

    $result = delete("devotions", "devotion_id", $delete_id);
    if ($result === true) {
        echo "true";
    } else {
        echo "false";
    }
}
