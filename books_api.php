<?php
header("Content-Type: application/json");

$servername = "localhost";
$username = "root";
$password = ""; 
$dbname = "books_db";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die(json_encode(["error" => "Connection failed: " . $conn->connect_error]));
}

$method = $_SERVER['REQUEST_METHOD'];
$input = json_decode(file_get_contents("php://input"), true);

switch ($method) {
    case 'POST': 
        $title = $input['title'];
        $author = $input['author'];
        $genre = $input['genre'];
        $published_date = $input['published_date'];
        $isbn = $input['isbn'];

        $sql = "INSERT INTO books (title, author, genre, published_date, isbn) VALUES ('$title', '$author', '$genre', '$published_date', '$isbn')";
        if ($conn->query($sql) === TRUE) {
            echo json_encode(["message" => "Book added successfully"]);
        } else {
            echo json_encode(["error" => $conn->error]);
        }
        break;

    case 'DELETE': 
        $id = $_GET['id'];
        $sql = "DELETE FROM books WHERE id = $id";
        if ($conn->query($sql) === TRUE) {
            echo json_encode(["message" => "Book deleted successfully"]);
        } else {
            echo json_encode(["error" => $conn->error]);
        }
        break;

    case 'GET': 
        if (isset($_GET['id'])) {

            $id = $_GET['id'];
            $sql = "SELECT * FROM books WHERE id = $id";
            $result = $conn->query($sql);
            if ($result->num_rows > 0) {
                echo json_encode($result->fetch_assoc());
            } else {
                echo json_encode(["message" => "Book not found"]);
            }
        } else {

            $sql = "SELECT * FROM books";
            $result = $conn->query($sql);
            $books = [];
            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                    $books[] = $row;
                }
            }
            echo json_encode($books);
        }
        break;

    case 'PUT': 
        $id = $input['id'];
        $title = $input['title'];
        $author = $input['author'];
        $genre = $input['genre'];
        $published_date = $input['published_date'];
        $isbn = $input['isbn'];

        $sql = "UPDATE books SET title='$title', author='$author', genre='$genre', published_date='$published_date', isbn='$isbn' WHERE id=$id";
        if ($conn->query($sql) === TRUE) {
            echo json_encode(["message" => "Book updated successfully"]);
        } else {
            echo json_encode(["error" => $conn->error]);
        }
        break;

    default:
        echo json_encode(["error" => "Unsupported request method"]);
        break;
}

$conn->close();
?>
