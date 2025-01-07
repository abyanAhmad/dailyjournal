<?php
// Memulai session atau melanjutkan session yang sudah ada
session_start();

// Menyertakan code dari file koneksi
include "koneksi.php";

// Check jika sudah ada user yang login arahkan ke halaman admin
if (isset($_SESSION['username'])) { 
    header("location:admin.php"); 
    exit();
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = trim($_POST['username']);
    $password = $_POST['password']; // Jangan hash dulu

    // Prepared statement untuk mengambil user berdasarkan username
    $stmt = $conn->prepare("SELECT username, password FROM user WHERE username = ?");
    if ($stmt === false) {
        die("Prepare failed: " . htmlspecialchars($conn->error));
    }

    // Binding parameter
    $stmt->bind_param("s", $username);
    
    // Eksekusi statement
    $stmt->execute();
    
    // Mendapatkan hasil
    $hasil = $stmt->get_result();
    $row = $hasil->fetch_assoc();
    
    // Memeriksa apakah user ada dan password cocok
    if ($row && password_verify($password, $row['password'])) {
        // Jika password cocok, simpan username pada session
        $_SESSION['username'] = $row['username'];
        
        // Mengalihkan ke halaman admin
        header("location:admin.php");
        exit();
    } else {
        // Jika tidak ada atau password salah, tampilkan pesan error atau alihkan kembali
        // Anda bisa menambahkan pesan error di form login jika diinginkan
        header("location:login.php?error=1");
        exit();
    }
    
    // Menutup koneksi
    $stmt->close();
    $conn->close();
} else {
?>
<!DOCTYPE html>

<html lang="en">
<head>
    <!-- (Bagian head tetap sama) -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Latihan-boostrap</title>
    <link rel="icon" href="img/logo.png" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
    <!-- (Bagian body tetap sama) -->
    <!-- nav -->
    <nav class="navbar navbar-expand-lg bg-body-tertiary sticky-top">
        <div class="container">
            <a class="navbar-brand" href="#">Jurnal harianku</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" 
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="text-dark navbar-nav ms-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" href="index.php#hero">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="index.php#profil">Profil</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="index.php#article">Article</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="index.php#jadwal">Schedule</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="index.php#gallery">Gallery</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="login.php">Login</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- /nav -->

    <!-- form -->
    <section id="article" class="text-center p-5 bg-info-subtle">
        <div class="container">
            <div class="row mb-2">
                <div class="col">
                    <div class="row justify-content-center">
                        <div class="col-md-4" style="margin-left: 95px;"> 
                            <div class="card text-bg-light text-center" style="max-width: 20rem;">
                                <div class="card-body">
                                    <div class="text-center mb-3">
                                        <i class="bi bi-person-circle h1 display-4"></i>
                                        <p>Welcome to My Daily Journal</p>
                                        <hr />
                                    </div>

                                    <!-- Tampilkan pesan error jika ada -->
                                    <?php if(isset($_GET['error'])): ?>
                                        <div class="alert alert-danger" role="alert">
                                            Username atau Password salah.
                                        </div>
                                    <?php endif; ?>

                                    <form method="post">
                                        <div class="mb-3">
                                            <label for="username" class="form-label">Username:</label>
                                            <input type="text" name="username" class="form-control" required>
                                        </div>
                                        <div class="mb-3">
                                            <label for="password" class="form-label">Password:</label>
                                            <input type="password" name="password" class="form-control" required>
                                        </div>
                                        <button type="submit" class="btn btn-primary">Login</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
    </section>
    <!-- /form -->

    <!-- footer -->
    <footer class="text-center p-5 ">
        <div>
            <a href="https://www.instagram.com/abianhmad/profilecard/?igsh=MmVlNjh3cm92dDh2" target="_blank" class="h2 d-inline-flex p-2 text-dark">
                <!-- (Ikon Instagram) -->
                <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-instagram" viewBox="0 0 16 16">
                    <!-- SVG Path -->
                </svg>
            </a>
            <a href="https://www.facebook.com/share/FDGyJriNLWCbYkYY/" target="_blank" class="h2 d-inline-flex p-2 text-dark">
                <!-- (Ikon Facebook) -->
                <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-facebook" viewBox="0 0 16 16">
                    <!-- SVG Path -->
                </svg>
            </a>
            <a href="https://wa.me/qr/VPHS6WN7QEFPH1" target="_blank" class="h2 d-inline-flex p-2 text-dark">
                <!-- (Ikon WhatsApp) -->
                <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-whatsapp" viewBox="0 0 16 16">
                    <!-- SVG Path -->
                </svg>
            </a>
        </div>
        <div>
            Abyan Ahmad Farih &copy; 2024
        </div>
    </footer>
    <!-- /footer -->
</body>
</html>
<?php
}
?>
