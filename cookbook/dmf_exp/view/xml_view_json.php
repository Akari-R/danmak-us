<?php if (!defined('PmWiki')) exit();
$json = array();
foreach ($Obj->comment as $node) {
    $attr = $node->attr[0]->attributes();
    $nodeA = $node->attributes();
    
    $attrs = array();
    $attrs[] = $attr['playtime'];
    $attrs[] = $attr['color'];
    $attrs[] = $attr['mode'];
    $attrs[] = $attr['fontsize'];
    $attrs[] = $nodeA['userhash'];
    $attrs[] = $nodeA['sendtime'];
    
    $usText = $node->text;
    $pString = implode(",", $attrs);
    $text = htmlspecialchars($usText, ENT_NOQUOTES, "UTF-8");
    $text = strtr($text , "\n", "\r");
    $json[] = (object)array('c' => $pString, 'm' => $text);
}
if (!empty($json)) {
    echo json_encode($json);
} else {
    echo '[]';
}