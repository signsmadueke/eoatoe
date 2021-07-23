<?php
    require_once "admin/includes/functions/config.php";

    $response = fetchAll("meditations", "meditation_id");
    if ($response) {
        $items = $response;
    } else {
        echo "Temporary Error! Please check back later";
    }
    
    /**
    * For demonstration purposes, the data is defined here.
    * In a real scenario it should be loaded from a database.
    */
    $channel = array("title"        => "Emmanuel Atoe",
                     "description"  => "Emmanuel Atoe, Christian Counsellor & Author.",
                     "link"         => "https://www.madueke.com",
                     "copyright"    => "Copyright (C) 2020 Emmanuel Atoe. All rights reserved.");
    
    // $items = array(
    //     array("title"       => "$meditation_title",
    //           "description" => "This is the description of the first example.",
    //           "link"        => "https://www.example.com/example1.html",
    //           "pubDate"     => date("D, d M Y H:i:s O", mktime(22, 10, 0, 12, 29, 2008)))
    // );
    
    $output = "<?xml version=\"1.0\" encoding=\"ISO-8859-1\"?" . ">";
    $output .= "<rss version=\"2.0\">";
    $output .= "<channel>";
    $output .= "<title>" . $channel["title"] . "</title>";
    $output .= "<description>" . $channel["description"] . "</description>";
    $output .= "<link>" . $channel["link"] . "</link>";
    $output .= "<copyright>" . $channel["copyright"] . "</copyright>";
    
    foreach ($items as $item) {
        $meditation_link = strtolower((str_replace(" ", "-", $item['meditation_title'])));
        $meditation_body = str_replace("</b>", "'", $item["meditation_body"]);
        $meditation_body = trim(preg_replace('/\s+/', ' ', $meditation_body));
        $meditation_body = strip_tags(utf8_encode(stripslashes($meditation_body)));
        $meditation_body = substr($meditation_body, 0, 1000) . "...";
        $source = $item['datePosted'];
        $date = new DateTime($source);
        
        $output .= "<item>";
        $output .= "<title>" . $item["meditation_title"] . "</title>";
        $output .= "<description>" . $meditation_body . "</description>";
        $output .= "<link>" . "https://www.madueke.com/meditational?meditation=$meditation_link" . "</link>";
        $output .= "<pubDate>" . date("D, d M Y H:i:s T", strtotime($item['datePosted'])) . "</pubDate>";
        $output .= "</item>";
    }
    $output .= "</channel>";
    $output .= "</rss>";
    
    header("Content-Type: application/rss+xml; charset=ISO-8859-1");
    echo $output;

?>