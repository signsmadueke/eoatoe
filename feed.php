<?php
    require_once "admin/includes/functions/config.php";

    $response = fetchAll("meditations", "meditation_id");
    if ($response) {
        $items = $response;
    } else {
        echo "Temporary Error! Please check back later";
    }

    $response2 = fetchAll("prayers", "prayer_id");
    if ($response2) {
        $items2 = $response2;
    }

    $channel = array("title"        => "Emmanuel Atoe",
                     "description"  => "Emmanuel Atoe, Author and Christian Counsellor.",
                     "link"         => "https://www.eoatoe.com",
                     "copyright"    => "Copyright (C) 2020 Emmanuel Atoe. All rights reserved.");
    
    
    $output = "<?xml version=\"1.0\" encoding=\"UTF-8\"?" . ">";
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
        $output .= "<link>" . "https://www.eoatoe.com/meditation?meditation=$meditation_link" . "</link>";
        $output .= "<pubDate>" . date("D, d M Y H:i:s T", strtotime($item['datePosted'])) . "</pubDate>";
        $output .= "</item>";
    }
    foreach ($items2 as $item2) {
        $prayer_link = strtolower((str_replace(" ", "-", $item2['prayer_title'])));
        $prayer_body = str_replace("</b>", "'", $item2["prayer_body"]);
        $prayer_body = trim(preg_replace('/\s+/', ' ', $prayer_body));
        $prayer_body = strip_tags(utf8_encode(stripslashes($prayer_body)));
        $prayer_body = substr($prayer_body, 0, 1000) . "...";
        $source = $item2['datePosted'];
        $date = new DateTime($source);
        
        $output .= "<item>";
        $output .= "<title>" . $item2["prayer_title"] . "</title>";
        $output .= "<description>" . $prayer_body . "</description>";
        $output .= "<link>" . "https://www.eoatoe.com/prayer?prayer=$prayer_link" . "</link>";
        $output .= "<pubDate>" . date("D, d M Y H:i:s T", strtotime($item2['datePosted'])) . "</pubDate>";
        $output .= "</item>";
    }
    $output .= "</channel>";
    $output .= "</rss>";
    
    header("Content-Type: application/rss+xml; charset=UTF-8");
    echo $output;

?>