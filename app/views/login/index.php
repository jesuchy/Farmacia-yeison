<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css" />
    <link rel="stylesheet" type="text/css" href="<?php echo RUTA_URL ?>/css/index.css">
    <link rel="stylesheet" type="text/css" href="<?php echo RUTA_URL ?>/css/login.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <link rel="stylesheet" href="<?php echo RUTA_URL ?>/assets/plugins/fontawesome-free/css/all.min.css">
    <title>Farmacia</title>

</head>

<div class="contenido">
    <div class="login-box">
        <form>
            <div class="user-box">
                <input type="text" class="Input" name="" required="" autocomplete="off" value="" placeholder="">
                <label>Usuario</label>
            </div>
            <div class="user-box">
                <input type="text" class="password" required="" placeholder="">
                <label>Contraseña</label>
            </div>

            <a type="button">
                <span></span>
                <span></span>
                <span></span>
                <span></span>
                iniciar sesión
            </a>
        </form>
    </div>
</div>



<script src="<?php echo RUTA_URL ?>/js/index.js"></script>
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>


<script type="text/javascript">
    $(document).ready(function() {
        $(".password").attr("type", "password");
    });
</script>