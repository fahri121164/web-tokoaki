<body class="hold-transition login-page">
<main class="page login-page">
    <section class="clean-block clean-form dark" style="background-image: url(assets/template/images/background.png)">
    <div class="col-md-12 p-b-30 justify-text">
         <div class="login-box">
                
                    <div class="row justify-content-center"> 
        
            <div class="container">

                
                
                                       
           
               
                   
                    <h2 class="text-info md-10 text-center mt-5"><strong>User Login<br><i class="fa fa-user fa-4x text-dark"></i></strong></h2>
                    
                </div>
                <form method="post">
                    
                    <div class="form-group ">
                    <div class="input-group">
                    <div class="input-group-prepend">
                    <div class="input-group-text"></div>
                    </div>
                    <input class="form-control item" type="text" name="username" placeholder="Username" value="<?php echo set_value('email') ?>" required></div>
                    <br>
                    <div class="form-group">
                    <div class="input-group">
                    <div class="input-group-prepend">
                    <div class="input-group-text"></div>
                    </div>
                    <input class="form-control" type="password" name="password" placeholder="Password"  value="<?php echo set_value('password') ?>" required></div>
                    <br>
                    <?php
                    if(isset($error)) {
                    ?>
                    <p style="color: red; font-style: italic">username / password salah</p>
                    <?php }?>
                    <input button class="btn btn-danger btn-block" type="submit" value="Log In" name="submit_login">
                    <br>
                    <p class="text-light">Belum punya akun? Silakan <a href="registrasi.php" class="text-"><strong>Daftar</strong></a></p>
                </form>
                </div>
                </div>
            </div>
        </div>
        </section>
    </main>
</body>

