<?php
$grade = "B";

switch ($grade) {
    case "A":
        echo "Excellent!";
        break;
    case "B":
        echo "Good job!";
        break;
    case "C":
        echo "You passed.";
        break;
    default:
        echo "Invalid grade.";
}
?>