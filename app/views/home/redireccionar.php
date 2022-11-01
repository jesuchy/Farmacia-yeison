<?php require_once RUTA_APP . '/views/inc/header.php'; ?>
<script>
    var user = "<?php echo $_SESSION['sesion_active']['tipo_usuario']?>";
    if(user == 'ADMINISTRADOR'){
        window.location.replace('<?php echo RUTA_URL?>/Home/Index');
    }else{
        if(user == 'A'){
            window.location.replace('<?php echo RUTA_URL?>/Home/admin');
        }else{
            if(user == 'U'){
                window.location.replace('<?php echo RUTA_URL?>/Home/usuario');
            }
        }
    }
</script>